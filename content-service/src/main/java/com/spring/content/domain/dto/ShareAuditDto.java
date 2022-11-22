package com.spring.content.domain.dto;

import com.spring.content.enums.AuditStatusEnum;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @description: 分享审核数据传输对象
 * @author: mqxu
 * @date: 2022-11-22
 **/
@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class ShareAuditDto {
    /**
     * id
     */
    private Integer id;
    /**
     * 审核状态
     */
    private AuditStatusEnum auditStatusEnum;
    /**
     * 原因
     */
    private String reason;

    /**
     * 是否发布显示
     */
    private Boolean showFlag;
}