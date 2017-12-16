package com.thoughtWorks.service.impl;

import com.thoughtWorks.dao.CustomLoginDao;
import com.thoughtWorks.entity.Custom;
import com.thoughtWorks.service.CustomLoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author ubuntu
 */
@Service
public class CustomLoginServiceImpl implements CustomLoginService{
    @Autowired
    private CustomLoginDao customLoginDao;

    @Override
    public Custom login(Custom custom) throws Exception{
        return customLoginDao.login(custom);
    }
}
