package com.spring.user.repository;

import com.spring.user.domain.entity.BonusEventLog;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * @description:
 * @author: mqxu
 * @date: 2022-11-22
 **/
public interface BonusEventLogRepository extends JpaRepository<BonusEventLog, Integer> {
}
