package com.eutwStudio.dao;

import com.eutwStudio.entity.OperLog;

public interface OperLogMapper {

    int insert(OperLog operLog);

    int insertSelective(OperLog operLog);

}