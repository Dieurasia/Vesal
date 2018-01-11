package com.thoughtWorks.service;

import com.thoughtWorks.entity.Order;

/**
 * @author 马欢欢
 * @date 18-1-10
 */
public interface OrderService {
    /**
     * 添加一个订单
     * @param order
     * @throws Exception
     */
    void addOrder(Order order)throws Exception;
}