package com.thoughtWorks.service.impl;

import com.thoughtWorks.dao.OrderDao;
import com.thoughtWorks.entity.Order;
import com.thoughtWorks.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;

/**
 * @author 马欢欢
 * @date 18-1-10
 */
@Service
public class OrderServiceImpl implements OrderService{
    @Autowired
    private OrderDao orderDao;

    @Override
    public void addOrder(Order order) throws Exception {
        order.setOCode(orderCode(order));
        order.setOOrderTime(nowTime());
        order.setOFinish(0);
        orderDao.addOrder(order);
    }

    /**
     * 随机生成订单编码
     * @param order
     * @return
     */
    public String orderCode(Order order) {
        Random random = new Random();
        String result = "";
        final int NUM = 6;
        for (int i = 0; i < NUM; i++) {
            result += random.nextInt(10);
        }
        String timeMillis = System.currentTimeMillis() + "";
        String orderCode = timeMillis.substring(4) + "" + order.getCustomId() + "" + result;
        return orderCode;
    }

    /**
     * 获取系统时间
     * @return
     */
    public String nowTime(){
        //可以方便地修改日期格式
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        return dateFormat.format(new Date());
    }
}
