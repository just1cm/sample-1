package com.spring.content.repository;

import com.spring.content.domain.entity.MidUserShare;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * @description:
 * @author: mqxu
 * @date: 2022-11-22
 **/
public interface MidUserShareRepository extends JpaRepository<MidUserShare, Integer> {
    /**
     * 根据 userId 和 shareId 查询中间表内容
     * @param userId userId
     * @param shareId shareId
     * @return MidUserShare
     */
    MidUserShare findByUserIdAndShareId(Integer userId, Integer shareId);
}
