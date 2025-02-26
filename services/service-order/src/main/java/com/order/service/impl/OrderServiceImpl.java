package com.order.service.impl;

import com.order.bean.Order;
import com.order.service.OrderService;
import org.springframework.stereotype.Service;


@Service
public class OrderServiceImpl implements OrderService {

    @Override
    public Order createOrder(Long productId, Long userId) {
        Order order = new Order();
        order.setId(1L);
        // TODO
//        order.setTotalAmount();
        order.setUserId(userId);
        order.setNickName("小明");
        order.setAddress("成都");
        // TODO
        order.setProducts(null);
        return order;
    }
}
