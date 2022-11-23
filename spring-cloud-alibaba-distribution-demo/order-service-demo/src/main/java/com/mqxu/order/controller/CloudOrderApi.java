package com.mqxu.order.controller;

import com.mqxu.order.service.OrderService;
import io.seata.spring.annotation.GlobalTransactional;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;

/**
 * @description: 订单接口
 * @author: mqxu
 * @date: 2022-10-25
 **/
@RestController
public class CloudOrderApi {
    @Resource
    private OrderService orderService;

    @GetMapping("/order/saveOrder")
    //@GlobalTransactional(name = "cloud-order-service", rollbackFor = Exception.class)
    public Boolean saveOrder(@RequestParam("cartId") int cartId) {
        return orderService.saveOrder(cartId);
    }
}
