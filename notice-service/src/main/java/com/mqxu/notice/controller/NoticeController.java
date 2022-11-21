package com.mqxu.notice.controller;

import com.mqxu.notice.common.ResponseResult;
import com.mqxu.notice.common.ResultCode;
import com.mqxu.notice.domain.entity.Notice;
import com.mqxu.notice.service.NoticeService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cloud.context.config.annotation.RefreshScope;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * @description:
 * @author: mqxu
 * @date: 2022-09-03
 **/
@RestController
@RequestMapping(value = "/notices")
@Slf4j
@RefreshScope
@RequiredArgsConstructor(onConstructor = @__(@Autowired))
public class NoticeController {
    private final NoticeService noticeService;


    @GetMapping("/list")
    public ResponseResult getNotice() {
        List<Notice> notices = noticeService.getNotices();
        return ResponseResult.success(notices);
    }
}
