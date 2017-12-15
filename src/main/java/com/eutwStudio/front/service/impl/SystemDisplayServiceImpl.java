package com.eutwStudio.front.service.impl;

import com.eutwStudio.front.dao.SystemDisplayDao;
import com.eutwStudio.front.entity.Level;
import com.eutwStudio.front.service.SystemDisplayService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Map;

/**
 *
 * @author 马欢欢
 * @date 2017/12/15
 */
//@Service
public class SystemDisplayServiceImpl implements SystemDisplayService{

//    @Resource
    private SystemDisplayDao systemDisplayDao;

    @Override
    public Map<String, Object> systemInfo(Level level) throws Exception {
        return systemDisplayDao.systemInfo(level);
    }
}
