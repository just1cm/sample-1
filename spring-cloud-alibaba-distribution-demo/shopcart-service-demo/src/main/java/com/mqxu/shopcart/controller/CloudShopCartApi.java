package com.mqxu.shopcart.controller;

import com.mqxu.shopcart.service.ShopCartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.Map;

/**
 * @description: 购物车接口
 * @author: mqxu
 * @date: 2022-10-25
 **/
@RestController
public class CloudShopCartApi {
    @Resource
    private JdbcTemplate jdbcTemplate;

    @Resource
    private ShopCartService shopCartService;

    @GetMapping("/shop-cart/getGoodsId")
    public int getGoodsId(@RequestParam("cartId") int cartId) {
        return shopCartService.getGoods(cartId);
    }

    @DeleteMapping("/shop-cart/{cartId}")
    public Boolean deleteItem(@PathVariable("cartId") int cartId) {
        return shopCartService.delCartItem(cartId) > 0;
    }
}
