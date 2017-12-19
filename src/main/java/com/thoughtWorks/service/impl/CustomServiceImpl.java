package com.thoughtWorks.service.impl;

import com.thoughtWorks.dao.CustomDao;
import com.thoughtWorks.entity.Custom;
import com.thoughtWorks.entity.Subscribe;
import com.thoughtWorks.service.CustomService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;
import java.util.UUID;

/**
 * @author ubuntu
 */
@Service
public class CustomServiceImpl implements CustomService {
    @Autowired
    private CustomDao customDao;

    @Override
    public Custom login(Custom custom) throws Exception {
        return customDao.login(custom);
    }

    @Override
    public void subscribe(Subscribe subscribe) throws Exception {
        if (subscribe.getsWhether() == 1) {
            customDao.addSubscribe(subscribe);
        } else {
            customDao.deleteSubscribe(subscribe);
        }
    }

    @Override
    public List<Map<String, Object>> personalSubscription(Custom custom) throws Exception {
        return customDao.personalSubscription(custom);
    }

    @Override
    public boolean queryCustomByName(String cName) throws Exception {
        Custom custom = customDao.queryCustomByName(cName);
            if(custom == null){
            return true;
        }
        return false;
    }

    @Override
    public void customRegister(Custom custom) throws Exception{
        String uuid = UUID.randomUUID().toString().replaceAll("-", "");
        custom.setcCode(uuid);
        customDao.customRegister(custom);
    }
}