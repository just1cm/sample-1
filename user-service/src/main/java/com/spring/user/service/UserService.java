package com.spring.user.service;


import com.spring.user.domain.entity.User;

import java.util.List;

/**
 * @description:
 * @author: mqxu
 * @date: 2022-09-06
 **/
public interface UserService {
    /**
     * 根据id查找用户
     *
     * @param id id
     * @return User
     */
    User findById(Integer id);

    /**
     * 查询所有用户
     *
     * @return List<User>
     */
    List<User> findAll();
}
