package com.spring.user.controller;

import com.spring.user.common.ResponseResult;
import com.spring.user.domain.entity.User;
import com.spring.user.service.UserService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;


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


    //@GetMapping("{id}")
    //public User getUserById(@PathVariable Integer id) {
    //    try {
    //        Thread.sleep(6000);
    //    } catch (InterruptedException e) {
    //        throw new RuntimeException(e);
    //    }
    //    return userService.findById(id);
    //}

    @GetMapping("{id}")
    public ResponseResult getUserById(@PathVariable Integer id) {
        try {
            Thread.sleep(6000);
        } catch (InterruptedException e) {
            throw new RuntimeException(e);
        }
        return ResponseResult.success(userService.findById(id));
    }
}
