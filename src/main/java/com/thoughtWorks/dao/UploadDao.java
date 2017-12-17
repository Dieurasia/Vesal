package com.thoughtWorks.dao;

import org.apache.ibatis.annotations.Param;

import java.util.Map;

public interface UploadDao {
    void addZipInfo(@Param("zipFile") Map<String, Object> zipFile);

    Map<String,Object> getModelGrade(@Param("data") Map<String, Object> data);

    String getModelGradeOne(@Param("count0") Object count0);

    String getModelGradeTwo(@Param("count1") Object count1);

    String getModelGradeThr(@Param("count2") Object count2);

    void addModelGrade(@Param("modelGrade") Map<String, Object> modelGrade);
}
