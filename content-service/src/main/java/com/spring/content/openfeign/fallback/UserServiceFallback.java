package com.spring.content.openfeign.fallback;

import com.spring.content.common.ResponseResult;
import com.spring.content.domain.entity.User;
import com.spring.content.openfeign.UserService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Component;

/**
 * @description: 降级类
 * @author: mqxu
 * @date: 2022-11-21
 **/
@Slf4j
@Component
public class UserServiceFallback implements UserService {
    @Override
    public ResponseResult getUser(int id) {
        log.info("fallback getUser");
        return ResponseResult.success(User.builder().nickname("降级方案返回用户").avatar("default.jpg").build());
    }

}