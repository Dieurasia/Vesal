package com.thoughtWorks.service.impl;

import com.thoughtWorks.dao.ModelInterfaceDao;
import com.thoughtWorks.entity.Classify;
import com.thoughtWorks.service.ModelInterfaceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
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
    public List<Map<String, Object>> modelInterface(String[] modelInterface) throws Exception {
        Classify classify = new Classify();
        List<Map<String, Object>> list = new ArrayList<>();
        int numberA =1;
        int numberB = 2;
        int numberC = 3;

        if (modelInterface.length == numberA) {
            classify.setAclassify(modelInterface[0]);
            list = modelInterfaceDao.aClassify(classify);
        } else if (modelInterface.length == numberB) {
            classify.setAclassify(modelInterface[0]);
            classify.setBclassify(modelInterface[1]);
            list = modelInterfaceDao.bClassify(classify);
        } else if (modelInterface.length == numberC) {
            classify.setAclassify(modelInterface[0]);
            classify.setBclassify(modelInterface[1]);
            classify.setCclassify(modelInterface[2]);
            list = modelInterfaceDao.modelAll(classify);
        }
        return list;
    }
}
