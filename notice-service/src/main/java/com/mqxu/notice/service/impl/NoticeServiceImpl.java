package com.mqxu.notice.service.impl;

import com.google.common.cache.CacheBuilder;
import com.mqxu.notice.domain.entity.Notice;
import com.mqxu.notice.repository.NoticeRepository;
import com.mqxu.notice.service.NoticeService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.concurrent.TimeUnit;

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
    //代表方法的结果需要缓存 ，如果缓存中有 方法不用调用，如果缓存中没有，调用方法，将结果放入缓存
    @Cacheable("noticeList")
    public List<Notice> getNotices() {
        long begin = System.currentTimeMillis();
        Sort sort = Sort.by("createTime").descending();
        List<Notice> noticeList = noticeRepository.findByShowFlag(true, sort);
        System.out.println("消耗时间：" + (System.currentTimeMillis() - begin));
        return noticeList;
    }
}
