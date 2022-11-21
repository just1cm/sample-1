package com.mqxu.notice.repository;

import com.mqxu.notice.domain.entity.Notice;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

/**
 * @description: 持久层
 * @author: mqxu
 * @date: 2022-09-03
 **/
public interface NoticeRepository extends JpaRepository<Notice, Integer> {
    /**
     * 根据是否显示查询消息，并根据日期排序
     *
     * @param showFlag 是否显示
     * @param sort     排序条件
     * @return List<Notice>
     */
    List<Notice> findByShowFlag(Boolean showFlag, Sort sort);
}
