package com.mqxu.shopcart.service;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.Map;

/**
 * @description:
 * @author: mqxu
 * @date: 2022-10-27
 **/
@Service
@Transactional(rollbackFor = {RuntimeException.class})
public class ShopCartService {
    @Resource
    private JdbcTemplate jdbcTemplate;


    public int getGoods(int cartId) {
        if (cartId < 0) {
            throw new RuntimeException("AT分布式事务出错，购物车事务挂了");
        }
        Map<String, Object> cartItemObject = jdbcTemplate.queryForMap("select * from tb_cart_item where cart_id=" + cartId + " limit 1");
        if (cartItemObject.containsKey("goods_id")) {
            // 返回商品id
            return (int) cartItemObject.get("goods_id");
        }
        return 0;
    }

    public int delCartItem(int cartId) {
        if (cartId < 0) {
            throw new RuntimeException("AT分布式事务出错，购物车事务挂了");
        }
        return jdbcTemplate.update("delete from tb_cart_item where cart_id=" + cartId);
    }
}
