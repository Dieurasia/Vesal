package com.thoughtWorks.service;

import com.thoughtWorks.entity.Custom;
import com.thoughtWorks.entity.Subscribe;
import org.springframework.stereotype.Service;

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
}
