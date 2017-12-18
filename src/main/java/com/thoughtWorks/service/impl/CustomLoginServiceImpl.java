package com.thoughtWorks.service.impl;

import com.thoughtWorks.dao.CustomLoginDao;
import com.thoughtWorks.entity.Custom;
import com.thoughtWorks.entity.Subscribe;
import com.thoughtWorks.service.CustomLoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;
import java.util.UUID;

/**
 * @author ubuntu
 */
@Service
public class CustomLoginServiceImpl implements CustomLoginService {
    @Autowired
    private CustomLoginDao customLoginDao;

    @Override
    public Custom login(Custom custom) throws Exception {
        return customLoginDao.login(custom);
    }

    @Override
    public void subscribe(Subscribe subscribe) throws Exception {
        if (subscribe.getsWhether() == 1) {
            customLoginDao.addSubscribe(subscribe);
        } else {
            customLoginDao.deleteSubscribe(subscribe);
        }
    }

    @Override
    public List<Map<String, Object>> personalSubscription(Custom custom) throws Exception {
        return customLoginDao.personalSubscription(custom);
    }

    @Override
    public void customRegister(Custom custom) {
        String uuid = UUID.randomUUID().toString().replaceAll("-", "");
        custom.setcCode(uuid);
        customLoginDao.customRegister(custom);
    }
}
