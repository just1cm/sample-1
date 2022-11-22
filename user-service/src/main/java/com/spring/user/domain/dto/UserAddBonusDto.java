package com.spring.user.domain.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @description: 用户增加积分的数据传输对象
 * @author: mqxu
 * @date: 2022-10-06
 **/
@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class UserAddBonusDto {
    private Integer userId;

    private Integer bonus;
}

