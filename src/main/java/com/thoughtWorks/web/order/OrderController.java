package com.thoughtWorks.web.order;

import com.thoughtWorks.entity.Cart;
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
     * @param cart
     * @return
     */
    @RequestMapping("addCart")
    @ResponseBody
    public GeneralResults addCart(Cart cart) {
        GeneralResults generalResults;

        try {
            orderService.addCart(cart);
            generalResults =  GeneralResults.success(GeneralMessage.ADD_CART_SUCCESS);
        } catch (Exception e) {
            generalResults = GeneralResults.failure(GeneralMessage.ADD_CART_FAILURE);
            e.printStackTrace();
        }

        return generalResults;
    }

    /**
     * 查询该模型是否已经添加在购物车
     * @param cart
     * @return
     */
    @RequestMapping("queryAddCart")
    @ResponseBody
    public GeneralResults queryAddCart(Cart cart) {
        GeneralResults generalResults = null;

        try {
            generalResults = GeneralResults.success(orderService.queryAddCart(cart),GeneralMessage.ADD_CART_HAVE);
        } catch (Exception e) {
            e.printStackTrace();
        }

        return generalResults;
    }

    /**
     * 查询当前用户所有购物车模型信息
     * @param cart
     * @return
     */
    @RequestMapping("queryCartModel")
    @ResponseBody
    public GeneralResults queryCartModel(Cart cart) {
        GeneralResults generalResults = null;

        try {
            generalResults = GeneralResults.success(orderService.queryCartModel(cart),GeneralMessage.SEARCH_SUCCESS);
        } catch (Exception e) {
            generalResults = GeneralResults.success(GeneralMessage.SEARCH_FAILURE);
            e.printStackTrace();
        }

        return generalResults;
    }
    /**
     *删除购物车订单信息通过订单
     * @param c_id
     * @return
     */
    @RequestMapping("deleteCartByCid")
    @ResponseBody
    public GeneralResults deleteCartByCid(int c_id) {
        GeneralResults generalResults = null;

        try {
            orderService.deleteCartByCid(c_id);
            generalResults = GeneralResults.success(GeneralMessage.DELETE_SUCCESS);
        } catch (Exception e) {
            generalResults = GeneralResults.success(GeneralMessage.DELETE_FAILURE);
            e.printStackTrace();
        }

        return generalResults;
    }

    /**
     * 添加订单
     * @param customId
     * @param allModelId
     * @return
     */
    @RequestMapping("addOrder")
    @ResponseBody
    public GeneralResults addOrder(int customId, String allModelId){
        GeneralResults generalResults;
        try {
            orderService.addOrder(customId,allModelId);
            generalResults = GeneralResults.success(GeneralMessage.ADD_ORDER_SUCCESS);
        } catch (Exception e) {
            generalResults = GeneralResults.success(GeneralMessage.ADD_CART_FAILURE);
            e.printStackTrace();
        }
        return generalResults;
    }

    /**
     * 查询订单信息通过用户id
     * @param customId
     * @return
     */
    @RequestMapping("queryOrderInfo")
    @ResponseBody
    public GeneralResults queryOrderInfo(int customId){
        GeneralResults generalResults;
        try {
            generalResults = GeneralResults.success( orderService.queryOrderInfo(customId),GeneralMessage.SEARCH_SUCCESS);
        } catch (Exception e) {
            generalResults = GeneralResults.success(GeneralMessage.SEARCH_FAILURE);
            e.printStackTrace();
        }
        return generalResults;
    }

}