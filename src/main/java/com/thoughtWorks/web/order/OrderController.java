package com.thoughtWorks.web.order;

import com.thoughtWorks.entity.Order;
import com.thoughtWorks.service.OrderService;
import com.thoughtWorks.util.general.GeneralMessage;
import com.thoughtWorks.util.general.GeneralResults;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Map;

/**
 * @author 马欢欢
 * @date 18-1-10
 */
@Controller
@RequestMapping("order")
public class OrderController {
    @Autowired
    private OrderService orderService;

    /**
     * 添加模型到购物车
     * @param order
     * @return
     */
    @RequestMapping("addOrder")
    @ResponseBody
    public GeneralResults addOrder(Order order) {
        GeneralResults generalResults;

        try {
            orderService.addOrder(order);
            generalResults =  GeneralResults.success(GeneralMessage.ADD_ORDER_SUCCESS);
        } catch (Exception e) {
            generalResults = GeneralResults.failure(GeneralMessage.ADD_ORDER_FAILURE);
            e.printStackTrace();
        }

        return generalResults;
    }

    /**
     * 查询该模型是否已经添加在购物车
     * @param order
     * @return
     */
    @RequestMapping("queryAddOrder")
    @ResponseBody
    public GeneralResults queryAddOrder(Order order) {
        GeneralResults generalResults = null;

        try {
            generalResults = GeneralResults.success(orderService.queryAddOrder(order),GeneralMessage.ADD_ORDER_HAVE);
        } catch (Exception e) {
            e.printStackTrace();
        }

        return generalResults;
    }

    /**
     * 查询当前用户所有购物车模型信息
     * @param order
     * @return
     */
    @RequestMapping("queryUnfinishedOrder")
    @ResponseBody
    public GeneralResults queryUnfinishedOrder(Order order) {
        GeneralResults generalResults = null;

        try {
            generalResults = GeneralResults.success(orderService.queryUnfinishedOrder(order),GeneralMessage.SEARCH_SUCCESS);
        } catch (Exception e) {
            generalResults = GeneralResults.success(GeneralMessage.SEARCH_FAILURE);
            e.printStackTrace();
        }

        return generalResults;
    }
    /**
     *删除购物车订单信息通过订单
     * @param o_id
     * @return
     */
    @RequestMapping("deleteOrderByOid")
    @ResponseBody
    public GeneralResults deleteOrderByOid(int o_id) {
        GeneralResults generalResults = null;

        try {
            orderService.deleteOrderByOid(o_id);
            generalResults = GeneralResults.success(GeneralMessage.DELETE_SUCCESS);
        } catch (Exception e) {
            generalResults = GeneralResults.success(GeneralMessage.DELETE_FAILURE);
            e.printStackTrace();
        }

        return generalResults;
    }
}