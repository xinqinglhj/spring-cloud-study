package com.order.service;

import com.order.bean.Order;

public interface OrderService {
    Order createOrder(Long product, Long userId);
}
