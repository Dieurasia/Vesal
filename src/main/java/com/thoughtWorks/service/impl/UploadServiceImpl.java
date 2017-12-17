package com.thoughtWorks.service.impl;

import com.thoughtWorks.dao.UploadDao;
import com.thoughtWorks.service.UploadService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

@Service
public class UploadServiceImpl implements UploadService {

    @Autowired
    UploadDao uploadDao;

    @Override
    public void addZipInfo(Map<String, Object> zipFile) {
        String code = (String) zipFile.get("code");
        uploadDao.addZipInfo(zipFile);
        //提取关于类型的信息
        Map<String, Object> data = extractFileInformation(zipFile);

        uploadDao.addModelGrade(getModelGrade(code, data));

    }

    private Map<String,Object> getModelGrade(String code, Map<String, Object> data) {
        Map<String, Object> modelGradeInfo = new HashMap<>();
        String oneId = null;
        String twoId = null;
        String thrId = null;
        modelGradeInfo.put("code", code);
        if (data.get("count0") != "") {
            oneId = uploadDao.getModelGradeOne(data.get("count0"));
            modelGradeInfo.put("oneId", oneId);
        }
        if (data.get("count1") != "") {
            twoId = uploadDao.getModelGradeTwo(data.get("count1"));
            modelGradeInfo.put("twoId", twoId);
        }
        if (data.get("count2") != "") {
            thrId = uploadDao.getModelGradeThr(data.get("count2"));
            modelGradeInfo.put("thrId", thrId);
        }

        return modelGradeInfo;
    }

    private Map<String, Object> extractFileInformation(Map<String, Object> zipFile) {
        Map<String, Object> modelGrade = new HashMap<>();

        String[] types = ((String) zipFile.get("type")).split("\\#");
        if (types.length == 3) {
            for (int i = 0; i < 3; i++) {
                modelGrade.put("count" + i, types[i]);
            }
        } else if (types.length == 2) {
            for (int j = 0; j < 2; j++) {
                modelGrade.put("count" + j, types[j]);
            }
            modelGrade.put("count3", "no");
        } else if (types.length == 1) {
            for (int j = 0; j < 1; j++) {
                modelGrade.put("count" + j, types[j]);
            }
            modelGrade.put("count2", "no");
            modelGrade.put("count3", "no");
        } else {
            System.out.println("存入数据错误!!!");
        }
        return modelGrade;
    }
}
