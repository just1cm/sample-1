package com.mqxu.notice.domain.entity;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.util.Date;

/**
 * @description: 公告实体类
 * @author: mqxu
 * @date: 2022-09-03
 **/
@AllArgsConstructor
@NoArgsConstructor
@Builder
@Data
@Entity
public class Notice {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    private String content;
    private Boolean showFlag;
    private Date createTime;
}
