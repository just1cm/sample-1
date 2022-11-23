package com.mqxu.order.openfeign;

import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;

/**
 * @author mqxu
 */
@FeignClient(value = "cloud-goods-service", path = "/goods")
public interface GoodsDemoService {
    /**
     * 减库存
     *
     * @param goodsId 商品id
     * @return Boolean
     */
    @PutMapping(value = "/{goodsId}")
    Boolean deStock(@PathVariable(value = "goodsId") int goodsId);
}
