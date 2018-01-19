package com.thoughtWorks.dao;

import com.thoughtWorks.entity.Cart;
import com.thoughtWorks.entity.Custom;
import com.thoughtWorks.entity.Model;
import com.thoughtWorks.entity.Order;
import org.apache.ibatis.annotations.Param;

import java.util.*;

/**
 * @author 马欢欢
 * @date 18-1-10
 */
public interface OrderDao {
    /**
     * 添加一个订单
     *
     * @param orders
     * @throws Exception
     */
    void addOrder(List<Order> orders) throws Exception;

    /**
     * 修改购物车模型状态为完成提交订单
     *
     * @param modelIds
     * @throws Exception
     */
    void updateCartById(List<Model> modelIds) throws Exception;

    /**
     *  查找商品是否已经添加到订单
     * @param customId
     * @return
     * @throws Exception
     */
    List<String> queryAllOrderCode(int customId) throws Exception;

    /**
     * 通过订单编码查询订单信息
     *
     * @return
     * @throws Exception
     */
    List<Map<String, Object>> queryOrderInfoByCode(String oCode) throws Exception;

    /**
     * 查询id查询模型
     *
     * @param m_id
     * @return
     * @throws Exception
     */
    Model queryModelById(int m_id) throws Exception;

    /**
     * 删除订单模型
     *
     * @param o_id
     * @throws Exception
     */
    void deleteOrderByOid(int o_id) throws Exception;


    /**
     * 添加到购物车
     *
     * @param cart
     * @throws Exception
     */
    void addCart(Cart cart) throws Exception;

    /**
     * 删除购物车模型
     *
     * @param c_id
     * @throws Exception
     */
    void deleteCartByCid(int c_id) throws Exception;

    /**
     * 查找商品是否已经添加到购物车
     *
     * @param cart
     * @return
     * @throws Exception
     */
    int queryAddCart(Cart cart) throws Exception;

    /**
     * 查询购物车未付款的所有模型
     *
     * @param cart
     * @return
     * @throws Exception
     */
    List<Map<String, Object>> queryCartModel(Cart cart) throws Exception;

}
