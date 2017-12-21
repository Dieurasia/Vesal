package com.thoughtWorks.service.impl;

import com.thoughtWorks.dao.ModelInterfaceDao;
import com.thoughtWorks.entity.Classify;
import com.thoughtWorks.service.ModelInterfaceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author ubuntu
 */
@Service
public class ModelInterfaceServiceImpl implements ModelInterfaceService {
    @Autowired
    private ModelInterfaceDao modelInterfaceDao;


    @Override
    public List<Map<String, Object>> modelinterface(String[] modelInterface) throws Exception {
        Classify classify = new Classify();

        if (modelInterface.length == 1) {
            classify.setAclassify(modelInterface[0]);
            return modelInterfaceDao.aClassify(classify);
        } else if (modelInterface.length == 2) {
            classify.setAclassify(modelInterface[0]);
            classify.setBclassify(modelInterface[1]);
            return modelInterfaceDao.bClassify(classify);
        } else if (modelInterface.length == 3) {
            classify.setAclassify(modelInterface[0]);
            classify.setBclassify(modelInterface[1]);
            classify.setCclassify(modelInterface[2]);
            return modelInterfaceDao.modelAll(classify);
        }
        return null;
    }
}
