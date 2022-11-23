package com.mqxu.goods.service;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;

/**
 * @description:
 * @author: mqxu
 * @date: 2022-10-27
 **/
@Service
@Transactional(rollbackFor = {RuntimeException.class})
public class GoodsService {
    @Resource
    private JdbcTemplate jdbcTemplate;

    public int delStock(int goodsId) {
        if (goodsId < 0) {
            throw new RuntimeException("AT分布式事务出错，商品事务挂了");
        }
        return jdbcTemplate.update("update tb_goods set goods_stock=goods_stock-1 where goods_id=" + goodsId);
    }
}
