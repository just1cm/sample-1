package com.spring.content.openfeign;

import com.spring.content.domain.entity.User;
import com.spring.content.openfeign.fallback.UserServiceFallback;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

/**
 * @description: OpenFeign接口
 * @author: mqxu
 * @date: 2022-11-21
 **/
@FeignClient(value = "user-service", path = "/users",fallback = UserServiceFallback.class)
public interface UserService {
    /**
     * 调用用户服务
     *
     * @param id 用户id
     * @return User
     */
    @GetMapping("{id}")
    User getUser(@PathVariable(value = "id") int id);
}
