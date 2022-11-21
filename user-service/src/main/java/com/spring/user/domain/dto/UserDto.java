package com.spring.user.domain.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @description:
 * @author: mqxu
 * @date: 2022-09-06
 **/
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class UserDto {
    private String mobile;
    private String password;
}
