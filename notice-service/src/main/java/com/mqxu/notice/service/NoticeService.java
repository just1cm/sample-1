package com.mqxu.notice.service;

import com.mqxu.notice.domain.entity.Notice;

import java.util.List;

/**
 * @description: 消息服务接口
 * @author: mqxu
 * @date: 2022-09-03
 **/
public interface NoticeService {
    /**
     * 获取最新消息
     *
     * @return 最新消息
     */
    List<Notice> getNotices();
}
