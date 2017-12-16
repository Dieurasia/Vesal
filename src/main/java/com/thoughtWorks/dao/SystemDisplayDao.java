package com.thoughtWorks.dao;

import com.thoughtWorks.entity.Level;
import com.thoughtWorks.entity.Model;

import java.util.List;

/**
 *
 * @author 马欢欢
 * @date 2017/12/15
 */
public interface SystemDisplayDao {

    /**
     *  系统解剖各菜单信息查询
     * @param level
     * @return
     */
    List<Model> systemInfo(Level level) throws Exception;
}
