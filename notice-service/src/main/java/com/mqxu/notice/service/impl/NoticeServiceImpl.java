package com.mqxu.notice.service.impl;

import com.mqxu.notice.domain.entity.Notice;
import com.mqxu.notice.repository.NoticeRepository;
import com.mqxu.notice.service.NoticeService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @description: NoticeService 实现类
 * @author: mqxu
 * @date: 2022-09-03
 **/
@Slf4j
@Service
@RequiredArgsConstructor(onConstructor = @__(@Autowired))
public class NoticeServiceImpl implements NoticeService {
    private final NoticeRepository noticeRepository;

    @Override
    public List<Notice> getNotices() {
        Sort sort = Sort.by("createTime").descending();
        List<Notice> noticeList = noticeRepository.findByShowFlag(true, sort);
        if (noticeList != null) {
            return noticeRepository.findByShowFlag(true, sort);
        } else {
            return null;
        }
    }
}
