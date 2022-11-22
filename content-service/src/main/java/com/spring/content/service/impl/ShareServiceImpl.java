package com.spring.content.service.impl;

import com.spring.content.domain.dto.ShareAuditDto;
import com.spring.content.domain.dto.UserAddBonusDto;
import com.spring.content.domain.entity.MidUserShare;
import com.spring.content.domain.entity.Share;
import com.spring.content.enums.AuditStatusEnum;
import com.spring.content.repository.MidUserShareRepository;
import com.spring.content.repository.ShareRepository;
import com.spring.content.service.MidUserShareService;
import com.spring.content.service.ShareService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.apache.rocketmq.spring.core.RocketMQTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Objects;


/**
 * @description:
 * @author: mqxu
 * @date: 2022-09-03
 **/
@Slf4j
@Service
@RequiredArgsConstructor(onConstructor = @__(@Autowired))
public class ShareServiceImpl implements ShareService {
    private final ShareRepository shareRepository;

    private final RocketMQTemplate rocketMQTemplate;

    private final MidUserShareService midUserShareService;


    @Override
    public Share findById(Integer id) {
        return shareRepository.findById(id).orElse(null);
    }

    @Override
    public Share auditShare(ShareAuditDto shareAuditDto) {
        Share share = shareRepository.findById(shareAuditDto.getId()).orElse(null);
        //  1. 没找到或已审核
        if (share == null) {
            throw new IllegalArgumentException("参数非法！该分享不存在！");
        }
        if (!Objects.equals("NOT_YET", share.getAuditStatus())) {
            throw new IllegalArgumentException("参数非法！该分享已审核！");
        }
        //2.审核资源，将状态改为 PASS 或 REJECT，更新原因和是否发布显示
        share.setAuditStatus(shareAuditDto.getAuditStatusEnum().toString());
        share.setReason(shareAuditDto.getReason());
        share.setShowFlag(shareAuditDto.getShowFlag());

        Share newShare = shareRepository.saveAndFlush(share);

        // 3. 向中间表插入数据
        midUserShareService.insert(MidUserShare.builder().shareId(newShare.getId()).userId(newShare.getUserId()).build());

        // 4. 如果是PASS，那么发送消息给rocketmq，让用户中心去消费，并为发布人添加积分
        if (AuditStatusEnum.PASS.equals(shareAuditDto.getAuditStatusEnum())) {
            rocketMQTemplate.convertAndSend("add-bonus", UserAddBonusDto.builder().userId(share.getUserId()).bonus(50).build());
        }
        return newShare;
    }

}
