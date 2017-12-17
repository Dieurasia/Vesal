package com.thoughtWorks.dao;

import org.apache.ibatis.annotations.Param;

import java.util.Map;

public interface UploadDao {
    public void addZipInfo(@Param("zipFile") Map<String, Object> zipFile);
}
