package com.spring.content.service;

import com.spring.content.domain.dto.ShareAuditDto;
import com.spring.content.domain.entity.Share;
import com.spring.content.openfeign.fallback.UserServiceFallback;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.List;


/**
 * @description:
 * @author: mqxu
 * @date: 2022-09-03
 **/
public interface ShareService {
    /**
     * 根据id查找分享
     *
     * @param id id
     * @return 分享内容
     */
    Share findById(Integer id);

    /**
     * 审核分享
     *
     * @param shareAuditDto shareAuditDto
     * @return Share
     */
    Share auditShare(ShareAuditDto shareAuditDto);
    
}
