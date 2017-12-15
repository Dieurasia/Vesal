package com.eutwStudio.front.dao;

import com.eutwStudio.front.entity.Level;

import java.util.Map;

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
    Map<String,Object> systemInfo(Level level) throws Exception;
}
