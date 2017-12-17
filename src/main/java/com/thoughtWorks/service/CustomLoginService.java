package com.thoughtWorks.service;

import com.thoughtWorks.entity.Custom;
import com.thoughtWorks.entity.Subscribe;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 * @author 马欢欢
 */
@Service
public interface CustomLoginService {

    /**
     * 客户登录
     * @param custom
     * @return
     */
    Custom login (Custom custom) throws Exception;

    /**
     * 订阅和取消订阅
     * @param subscribe
     * @throws Exception
     */
    void subscribe(Subscribe subscribe)throws Exception;

    /**
     *
     * 查找个人订阅信息
     * @param custom 个人信息：ID
     * @return 个人订阅的信息
     * @throws Exception
     */
    List<Map<String,Object>> personalSubscription (Custom custom)throws Exception;
}
