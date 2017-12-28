package com.thoughtWorks.service;

import com.thoughtWorks.entity.Level;
import java.util.List;
import java.util.Map;


/**
 * @author ubuntu
 */
public interface SystemDisplayService {

    /**
     * 根据级别查找各菜单信息查询
     * @param level 级别信息和用户信息
     * @return 模型的信息
     * @throws Exception
     */
    List<Map<String,Object>> systemInfo(Level level) throws Exception;

    /**
     * 模型菜单类别
     * @return
     * @throws Exception
     */
    List<Map<String,Object>> modelMenuClassify()throws Exception;
}
