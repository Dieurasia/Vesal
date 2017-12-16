package com.thoughtWorks.dao;

import com.thoughtWorks.entity.Custom;

/**
 * @author ubuntu
 */
public interface CustomLoginDao{

    /**
     * 客户登录
     * @param custom
     * @return
     */
    Custom login(Custom custom) throws Exception;
}
