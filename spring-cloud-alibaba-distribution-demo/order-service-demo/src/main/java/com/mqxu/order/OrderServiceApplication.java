package com.mqxu.order;

import com.mqxu.order.openfeign.GoodsDemoService;
import com.mqxu.order.openfeign.ShopCartDemoService;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.openfeign.EnableFeignClients;

/**
 * @author mqxu
 */
@SpringBootApplication
@EnableFeignClients(clients={ShopCartDemoService.class, GoodsDemoService.class})
public class OrderServiceApplication {

    public static void main(String[] args) {
        SpringApplication.run(OrderServiceApplication.class, args);
    }

}
