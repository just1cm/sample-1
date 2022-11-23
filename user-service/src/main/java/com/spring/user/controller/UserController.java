package com.spring.user.controller;

import com.alibaba.csp.sentinel.annotation.SentinelResource;
import com.alibaba.csp.sentinel.slots.block.BlockException;
import com.spring.user.common.ResponseResult;
import com.spring.user.domain.entity.User;
import com.spring.user.service.UserService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;


/**
 * @description:
 * @author: mqxu
 * @date: 2022-09-06
 **/
@RestController
@Slf4j
@RequestMapping(value = "/users")
@RequiredArgsConstructor(onConstructor = @__(@Autowired))
public class UserController {
    private final UserService userService;


    @GetMapping("{id}")
    @SentinelResource(value = "getUserById", blockHandler = "getUserByIdBlock")
    public User getUserById(@PathVariable Integer id) {
        //try {
        //    Thread.sleep(6000);
        //} catch (InterruptedException e) {
        //    throw new RuntimeException(e);
        //}
        int a = 3 / 0;
        return userService.findById(id);
    }

    @GetMapping("list")
    @SentinelResource(value = "getAllUsers", blockHandler = "getAllUsersBlock")
    public List<User> getAllUsers() {
        return userService.findAll();
    }

    public User getUserByIdBlock(@PathVariable Integer id, BlockException exception) {
        log.info("根据id查询用户接口被限流");
        log.info(exception.toString());
        return User.builder().nickname("限流返回用户").build();
    }

    public List<User> getAllUsersBlock(BlockException exception) {
        log.info("查询所有用户接口被限流");
        log.info(exception.toString());
        return new ArrayList<>();
    }


}
