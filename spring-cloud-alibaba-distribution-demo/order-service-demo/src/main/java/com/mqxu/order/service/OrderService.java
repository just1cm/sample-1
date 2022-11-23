package com.mqxu.order.service;

import com.mqxu.order.openfeign.GoodsDemoService;
import com.mqxu.order.openfeign.ShopCartDemoService;
import io.seata.spring.annotation.GlobalTransactional;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;

/**
 * @author mqxu
 */
@Service
@Transactional(rollbackFor = {RuntimeException.class})
@GlobalTransactional
public class OrderService {
    @Resource
    private JdbcTemplate jdbcTemplate;

    @Resource
    private GoodsDemoService goodsDemoService;

    @Resource
    private ShopCartDemoService shopCartDemoService;


    public Boolean saveOrder(int cartId) {
        // 调用购物车服务-获取即将操作的goods_id
        int goodsId = shopCartDemoService.getGoodsId(cartId);

        // 调用商品服务-减库存
        Boolean goodsResult = goodsDemoService.deStock(goodsId);

        // 调用购物车服务-删除当前购物车数据
        Boolean cartResult = shopCartDemoService.deleteItem(cartId);

        // 执行下单逻辑
        if (goodsResult && cartResult) {
            // 向订单表中新增一条记录
            int orderResult = jdbcTemplate.update("insert into tb_order(`cart_id`) value (\"" + cartId + "\")");
            // 模拟分布式异常
            int a = 1 / 0;
            throw new RuntimeException("AT分布式事务挂了");
            //return orderResult > 0;
        }
        return false;
    }
}
