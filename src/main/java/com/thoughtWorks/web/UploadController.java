package com.thoughtWorks.web;

import com.thoughtWorks.util.Constants;
import com.thoughtWorks.util.FileUtil;
import com.thoughtWorks.util.UnZipFileUtil;
import com.thoughtWorks.util.ZipUtil;
import org.apache.commons.fileupload.disk.DiskFileItem;
import org.apache.commons.io.FileUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;

/**
 * @author Vincent.wang
 *
 */
@Controller
@RequestMapping(value = "upload")
public class UploadController {

    private static final Logger log = LoggerFactory.getLogger(UploadController.class);

    @RequestMapping(value = "/spring", method = RequestMethod.GET)
    public String spring() {
        return "/upload/spring";
    }

    @RequestMapping(value = "/spring", method = RequestMethod.POST)
    public String springupload(@RequestParam("uploadfile") MultipartFile[] ajaxuploadfile, HttpServletRequest request, HttpServletResponse response, Model model) {
        String realPath = request.getServletContext().getRealPath("file") + Constants.PATH;
        String unRealPath = request.getServletContext().getRealPath("file") + Constants.UNPATH;
        FileUtil.isDirectory(realPath, true,request);
        FileUtil.isDirectory(unRealPath, true,request);
        response.setContentType("text/plain; charset=UTF-8");
        String originalFilename = null;
        for (MultipartFile file : ajaxuploadfile) {
            if (file.isEmpty()) {
                return null;
            } else {
                //file.getOriginalFilename()是得到上传时的文件名
                originalFilename = file.getOriginalFilename();
                log.warn("# originalFilename=[{}] , name=[{}] , size=[{}] , contentType=[{}] ", originalFilename, file.getName(), file.getSize(), file.getContentType());
                try {
                    CommonsMultipartFile cf= (CommonsMultipartFile)file;
                    DiskFileItem fi = (DiskFileItem)cf.getFileItem();
                    File oldFile = fi.getStoreLocation();
                    UnZipFileUtil.unZipFiles(oldFile, unRealPath);
                    System.out.println("文件123456789123456789："+file);
                    FileUtils.copyInputStreamToFile(file.getInputStream(), new File(realPath, originalFilename));
                } catch (IOException e) {
                    log.error("# upload fail . error message={}", e.getMessage());
                    e.printStackTrace();
                    return null;
                }
            }
        }
        model.addAttribute("msg", "上传成功！");
        return "moduleOne/moduleOne/moduleOne";
    }

    @RequestMapping(value = "/ajax", method = RequestMethod.GET)
    public String ajax() {
        return "/upload/ajax";
    }

    @RequestMapping(value = "/ajax", method = RequestMethod.POST)
    @ResponseBody
    public String ajaxupload(@RequestParam("ajaxuploadfile") MultipartFile[] ajaxuploadfile, HttpServletRequest request, HttpServletResponse response) {
        String realPath = Constants.PATH;
        FileUtil.isDirectory(realPath, true,request);
        response.setContentType("text/plain; charset=d-8");
        String originalFilename = null;
        for (MultipartFile file : ajaxuploadfile) {
            if (file.isEmpty()) {
                return "上传失败";
            } else {
                originalFilename = file.getOriginalFilename();
                log.warn("# originalFilename=[{}] , name=[{}] , size=[{}] , contentType=[{}] ", originalFilename, file.getName(), file.getSize(), file.getContentType());
                try {
                    FileUtils.copyInputStreamToFile(file.getInputStream(), new File(realPath, originalFilename));
                } catch (IOException e) {
                    log.error("# upload fail . error message={}", e.getMessage());
                    e.printStackTrace();
                    return "上传失败";
                }
            }
        }
        return "上传成功";
    }

}
