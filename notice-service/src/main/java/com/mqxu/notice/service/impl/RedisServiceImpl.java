//package com.mqxu.notice.service.impl;
//
//import org.springframework.cache.annotation.CacheConfig;
//import org.springframework.cache.annotation.CacheEvict;
//import org.springframework.cache.annotation.CachePut;
//import org.springframework.cache.annotation.Cacheable;
//import org.springframework.stereotype.Service;
//
//import java.util.ArrayList;
//import java.util.List;
//
///**
// * @description:
// * @author: mqxu
// * @date: 2022-11-22
// **/
//@Service
//@CacheConfig(cacheNames = "user", keyGenerator = "keyGenerator")
//public class RedisServiceImpl {
//
//    @Cacheable(value = "user", key = "'list'")
//    public List<String> list() {
//        System.out.println("=========list");
//        List<String> users = new ArrayList<>();
//        users.add("aaa");
//        users.add("bbb");
//        users.add("ccc");
//        users.add("ddd");
//        return users;
//    }
//
//}
