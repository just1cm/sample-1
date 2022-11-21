package com.spring.user.service.impl;

import com.spring.user.domain.entity.User;
import com.spring.user.repository.UserRepository;
import com.spring.user.service.UserService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @description:
 * @author: mqxu
 * @date: 2022-09-06
 **/
@Service
@Slf4j
@RequiredArgsConstructor(onConstructor = @__(@Autowired))
public class UserServiceImpl implements UserService {
    private final UserRepository userRepository;


    @Override
    public User findById(Integer id) {
        return userRepository.findById(id).orElse(null);
    }

}
