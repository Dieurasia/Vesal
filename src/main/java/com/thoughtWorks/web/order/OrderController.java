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


}