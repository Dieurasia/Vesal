package com.thoughtWorks.service.impl;

import com.thoughtWorks.dao.OrderDao;
import com.thoughtWorks.entity.Cart;
import com.thoughtWorks.entity.Model;
import com.thoughtWorks.entity.Order;
import com.thoughtWorks.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.SimpleDateFormat;
import java.util.*;

/**
 * @author 马欢欢
 * @date 18-1-10
 */
@Service
public class OrderServiceImpl implements OrderService {
    @Autowired
    private OrderDao orderDao;

    @Override
    public void addOrder(int customId, String allModelId) throws Exception {
        List<Order> list = new ArrayList<>();
        List<Model> modelIdList = new ArrayList<>();
        String[] modelIds = allModelId.split(",");
        String orderCode = orderCode(customId);
        String nowTime = nowTime();
        for (int i = 0; i < modelIds.length; i++) {
            Model model = orderDao.queryModelById(Integer.parseInt(modelIds[i]));
            Order order = new Order();
            //下单时间
            order.setOOrderTime(nowTime);
            order.setOFinish(0);
            order.setCustomId(customId);
            order.setModelId(model.getMId());
            order.setOModelPrice(model.getMPrice());
            order.setOModelIntroduce(model.getMIntroduce());
            order.setOModelVersion(model.getMVersion());
            order.setOModelCode(model.getMCode());
            //订单编码
            order.setOCode(orderCode);
            order.setOThumbnail(model.getMThumbnail());
            order.setOName(model.getMName());
            list.add(order);
            modelIdList.add(model);
        }
        orderDao.updateCartById(modelIdList);
        orderDao.addOrder(list);
    }


    @Override
    public List<Map<String, Object>> queryOrderInfo(int customId) throws Exception {
        List<String> orderCodeList = orderDao.queryAllOrderCode(customId);
        List<Map<String, Object>> list = new ArrayList<>();
        for (String orderCode : orderCodeList) {
            Map<String, Object> map = new HashMap<>();
            map.put("orderCode", orderCode);
            map.put("orderInfo", orderDao.queryOrderInfoByCode(orderCode));
            list.add(map);
        }
        return list;
    }

    @Override
    public void deleteOrderByOid(int o_id) throws Exception {
        orderDao.deleteOrderByOid(o_id);
    }

    @Override
    public void addCart(Cart cart) throws Exception {
        cart.setCFinish(0);
        orderDao.addCart(cart);
    }

    @Override
    public void deleteCartByCid(int c_id) throws Exception {
        orderDao.deleteCartByCid(c_id);
    }

    @Override
    public int queryAddCart(Cart cart) throws Exception {
        return orderDao.queryAddCart(cart);
    }

    @Override
    public List<Map<String, Object>> queryCartModel(Cart cart) throws Exception {
        return orderDao.queryCartModel(cart);
    }

    /**
     * 随机生成订单编码
     *
     * @param customId
     * @return
     */
    public String orderCode(int customId) {
        Random random = new Random();
        String result = "";
        final int NUM = 6;
        for (int i = 0; i < NUM; i++) {
            result += random.nextInt(10);
        }
        String timeMillis = System.currentTimeMillis() + "";
        String orderCode = timeMillis.substring(4) + "" + customId + "" + result;
        return orderCode;
    }

    /**
     * 获取系统时间
     *
     * @return
     */
    public String nowTime() {
        //可以方便地修改日期格式
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        return dateFormat.format(new Date());
    }
}
