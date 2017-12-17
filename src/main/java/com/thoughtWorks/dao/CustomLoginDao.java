package com.thoughtWorks.dao;

import com.thoughtWorks.entity.Custom;
import com.thoughtWorks.entity.Subscribe;

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

    /**
     * 取消订阅
     * @param subscribe
     * @throws Exception
     */
    void deleteSubscribe(Subscribe subscribe)throws Exception;

    /**
     * 添加订阅
     * @param subscribe
     * @throws Exception
     */
    void addSubscribe(Subscribe subscribe)throws Exception;
}
