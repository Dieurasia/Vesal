package com.eutwStudio.front.service.impl;

import com.eutwStudio.front.dao.SystemDisplayDao;
import com.eutwStudio.front.entity.Level;
import com.eutwStudio.front.service.SystemDisplayService;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.Map;

/**
 * Created by 马欢欢 on 2017/12/15.
 */
public class SystemDisplayServiceImpl implements SystemDisplayService{

    @Autowired
    private SystemDisplayDao systemDisplayDao;

    @Override
    public Map<String, Object> systemInfo(Level level) throws Exception {
        return systemDisplayDao.systemInfo(level);
    }
}
