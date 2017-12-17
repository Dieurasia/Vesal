package com.thoughtWorks.service.impl;

import com.thoughtWorks.dao.UploadDao;
import com.thoughtWorks.service.UploadService;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.Map;

public class UploadServiceImpl implements UploadService {

    @Autowired
    UploadDao uploadDao;

    @Override
    public void addZipInfo(Map<String, Object> zipFile) {
        uploadDao.addZipInfo(zipFile);
    }
}
