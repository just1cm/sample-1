package com.spring.user.repository;


import com.spring.user.domain.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * @description:
 * @author: mqxu
 * @date: 2022-09-06
 **/
public interface UserRepository extends JpaRepository<User, Integer> {
}
