package com.thoughtWorks.dao;

import com.thoughtWorks.entity.Level;
import com.thoughtWorks.entity.Model;

import java.util.List;
import java.util.Map;

/**
 *
 * @author 马欢欢
 * @date 2017/12/15
 */
public interface SystemDisplayDao {

    /**
     * 系统解剖各菜单信息查询
     * @param level
     * @return
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
