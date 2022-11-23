package com.mqxu.goods.controller;

import com.mqxu.goods.service.GoodsService;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;

/**
 * @description: 商品服务接口
 * @author: mqxu
 * @date: 2022-10-25
 **/
@RestController
public class CloudGoodsApi {
    @Resource
    private GoodsService goodsService;


    @PutMapping("/goods/{goodsId}")
    public Boolean deStock(@PathVariable("goodsId") int goodsId) {
        int result = goodsService.delStock(goodsId);
        // 模拟网络异常问题
        //try {
        //    Thread.sleep(10 * 1000);
        //} catch (InterruptedException e) {
        //    e.printStackTrace();
        //}
        return result > 0;
    }
}
