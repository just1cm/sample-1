package com.spring.content.repository;

import com.spring.content.domain.entity.Share;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * @description:
 * @author: mqxu
 * @date: 2022-09-03
 **/
public interface ShareRepository extends JpaRepository<Share, Integer> {

}
