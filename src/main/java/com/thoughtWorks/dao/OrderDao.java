package com.thoughtWorks.dao;

import com.thoughtWorks.entity.Order;

import java.util.*;

/**
 * @author 马欢欢
 * @date 18-1-10
 */
public interface OrderDao {
    /**
     * 添加一个订单
     * @param order
     * @throws Exception
     */
    void addOrder(Order order)throws Exception;

    /**
     * 查找商品是否已经添加到购物车
     * @param order
     * @return
     * @throws Exception
     */
    int queryAddOrder(Order order)throws Exception;

    /**
     * 查询购物车未付款的所有模型
     * @param order
     * @return
     * @throws Exception
     */
    List<Map<String,Object>> queryUnfinishedOrder(Order order)throws Exception;

    /**
     * 删除购物车模型
     * @param o_id
     * @throws Exception
     */
    void deleteOrderByOid(int o_id)throws Exception;
}
