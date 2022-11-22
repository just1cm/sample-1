package com.spring.gateway.predicate;

import lombok.extern.slf4j.Slf4j;
import org.springframework.cloud.gateway.handler.predicate.AbstractRoutePredicateFactory;
import org.springframework.cloud.gateway.handler.predicate.GatewayPredicate;
import org.springframework.stereotype.Component;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.server.ServerWebExchange;

import java.util.Arrays;
import java.util.List;
import java.util.function.Predicate;

/**
 * @description: 自定义谓词工厂处理 shareId
 * @author: mqxu
 * @date: 2022-11-22
 **/
@Component
@Slf4j
public class ShareIdRoutePredicateFactory extends AbstractRoutePredicateFactory<ShareIdRoutePredicateFactory.Config> {

    public ShareIdRoutePredicateFactory() {
        super(Config.class);
    }

    @Override
    public List<String> shortcutFieldOrder() {
        // 定义配置文件中的参数项（最大值和最小值）
        return Arrays.asList("minValue", "maxValue");
    }

    @Override
    public Predicate<ServerWebExchange> apply(Config config) {
        return (GatewayPredicate) exchange -> {
            // 获取 shareId 参数的值
            //String shareId = exchange.getRequest().getQueryParams().getFirst("shareId");
            String path = exchange.getRequest().getURI().getPath();
            log.info(path);
            String shareId = path.substring(path.lastIndexOf("/") + 1);
            log.info(shareId);
            int numberId = Integer.parseInt(shareId);
            // 判断 shareId 是否在配置区间内
            // 符合条件，则返回 true，路由规则生效;则返回false，路由规则不生效
            return numberId >= config.getMinValue() && numberId <= config.getMaxValue();
        };
    }

    @Validated
    //接收配置文件中定义的最大和最小值
    public static class Config {
        private int minValue;
        private int maxValue;

        public int getMinValue() {
            return minValue;
        }

        public void setMinValue(int minValue) {
            this.minValue = minValue;
        }

        public int getMaxValue() {
            return maxValue;
        }

        public void setMaxValue(int maxValue) {
            this.maxValue = maxValue;
        }
    }
}