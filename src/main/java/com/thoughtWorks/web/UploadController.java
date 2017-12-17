package com.thoughtWorks.web;

import com.thoughtWorks.service.UploadService;
import com.thoughtWorks.util.Constants;
import com.thoughtWorks.util.file.FileUtil;
import com.thoughtWorks.util.file.ReadFileUtil;
import com.thoughtWorks.util.file.UnZipFileUtil;
import org.apache.commons.fileupload.disk.DiskFileItem;
import org.apache.commons.io.FileUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
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
import java.util.*;

/**
 * @author Vincent.wang
 */
@Controller
@RequestMapping(value = "upload")
public class UploadController {
    @Autowired
    UploadService uploadService;

    private static final Logger log = LoggerFactory.getLogger(UploadController.class);


    @RequestMapping(value = "/spring", method = RequestMethod.GET)
    public String spring() {
        return "/upload/spring";
    }

    @RequestMapping(value = "/spring", method = RequestMethod.POST)
    public String springupload(@RequestParam("uploadfile") MultipartFile[] ajaxuploadfile, HttpServletRequest request, HttpServletResponse response, Model model) {
        String uuid = UUID.randomUUID().toString().replaceAll("-", "");
        String realPath = request.getServletContext().getRealPath("file") + Constants.PATH + uuid;
        String unRealPath = request.getServletContext().getRealPath("file") + Constants.UNPATH + uuid;
        FileUtil.isDirectory(realPath, true, request);
        FileUtil.isDirectory(unRealPath, true, request);
        response.setContentType("text/plain; charset=UTF-8");
        String originalFilename = null;
        for (MultipartFile file : ajaxuploadfile) {
            if (file.isEmpty()) {
                model.addAttribute("msg", "没有文件！");
                return "moduleOne/moduleOne/moduleOne";
            } else {
                //file.getOriginalFilename()是得到上传时的文件名
                originalFilename = file.getOriginalFilename();
                log.warn("# originalFilename=[{}] , name=[{}] , size=[{}] , contentType=[{}] ", originalFilename, file.getName(), file.getSize(), file.getContentType());
                try {
                    //获取文件后缀名
                    String suffix = originalFilename.substring(originalFilename.lastIndexOf(".") + 1);

                    CommonsMultipartFile cf = (CommonsMultipartFile) file;
                    DiskFileItem fi = (DiskFileItem) cf.getFileItem();
                    File oldFile = fi.getStoreLocation();
                    UnZipFileUtil.unZipFiles(oldFile, unRealPath);
                    FileUtils.copyInputStreamToFile(file.getInputStream(), new File(realPath, originalFilename));

                    ReadFileUtil readFileUtil = new ReadFileUtil();
                    Map<String, Object> fileInfo = readFileUtil.readallfile(unRealPath);
                    //提取zip里面的信息,并封装到map集合中,并传入Service层
                    uploadService.addZipInfo(extractZipInfo(fileInfo));
                } catch (IOException e) {
                    log.error("# upload fail . error message={}", e.getMessage());
                    e.printStackTrace();
                    model.addAttribute("msg", "上传失败！");
                    return "moduleOne/moduleOne/moduleOne";
                }
            }
        }
        model.addAttribute("msg", "上传成功！");
        return "moduleOne/moduleOne/moduleOne";
    }

    private Map<String, Object> extractZipInfo(Map<String, Object> fileInfo) {
        Map<String, Object> zipFileInfo = new HashMap<>();
        zipFileInfo.put("code", UUID.randomUUID().toString().replaceAll("-",""));
        for (String key : fileInfo.keySet()) {
            if (key.equals("txt")) {
                //读取txt文件的内容
                List txtInfo = ReadFileUtil.readTxtFileIntoStringArrList((String) fileInfo.get(key));
                for (int i = 0; i < txtInfo.size(); i++) {
                    String line = (String) txtInfo.get(i);
                    //分割必须采用英文符号,采用中文会导致分割失败
                    String[] items = line.split("\\:");
                    if (items.length > 1) {
                        zipFileInfo.put(items[0], items[1]);
                    }
                }
            }

            if (key.equals("imgStr")) {
                List<String> imgs = (List<String>) fileInfo.get(key);
                if (imgs.size() == 1 && null != imgs) {
                    zipFileInfo.put("imgStr", imgs.get(0));
                } else if (imgs.size() > 1) {
                    String imgMore = "";
                    for (int i = 0; i < imgs.size(); i++) {
                        imgMore += imgs.get(i) + "###";
                    }
                    zipFileInfo.put("imgStr", imgMore);
                }
            }

            if (key.equals("gifStr")) {
                List<String> gifs = (List<String>) fileInfo.get(key);
                if (gifs.size() == 1 && null != gifs) {
                    zipFileInfo.put("gifStr", gifs.get(0));
                } else if (gifs.size() > 1) {
                    String gifMore = "";
                    for (int i = 0; i < gifs.size(); i++) {
                        gifMore += gifs.get(i) + "###";
                    }
                    zipFileInfo.put("gifStr", gifMore);
                }
            }

            if (key.equals("assetbundleStr")) {
                List<String> assetbundles = (List<String>) fileInfo.get(key);
                if (assetbundles.size() == 1 && null != assetbundles) {
                    zipFileInfo.put("assetbundleStr", assetbundles.get(0));
                } else if (assetbundles.size() > 1) {
                    String gifMore = "";
                    for (int i = 0; i < assetbundles.size(); i++) {
                        gifMore += assetbundles.get(i) + "###";
                    }
                }
            }
        }

        return zipFileInfo;
    }

    @RequestMapping(value = "/ajax", method = RequestMethod.GET)
    public String ajax() {
        return "/upload/ajax";
    }

    @RequestMapping(value = "/ajax", method = RequestMethod.POST)
    @ResponseBody
    public String ajaxupload(@RequestParam("ajaxuploadfile") MultipartFile[] ajaxuploadfile, HttpServletRequest request, HttpServletResponse response) {
        String realPath = Constants.PATH;
        FileUtil.isDirectory(realPath, true, request);
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
