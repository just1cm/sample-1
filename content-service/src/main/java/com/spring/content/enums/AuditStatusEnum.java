package com.spring.content.enums;

import lombok.AllArgsConstructor;
import lombok.Getter;

/**
 * @description: 审核状态枚举
 * @author: mqxu
 * @date: 2022-11-22
 **/
@Getter
@AllArgsConstructor
public enum AuditStatusEnum {
    /**
     * 待审核
     */
    NOT_YET,
    /**
     * 审核通过
     */
    PASS,
    /**
     * 审核不通过
     */
    REJECT
}