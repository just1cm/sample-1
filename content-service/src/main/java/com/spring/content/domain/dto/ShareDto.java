package com.spring.content.domain.dto;

import com.spring.content.domain.entity.Share;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @description:
 * @author: mqxu
 * @date: 2022-09-06
 **/
@AllArgsConstructor
@NoArgsConstructor
@Builder
@Data
public class ShareDto {
    private Share share;
    private String nickName;
    private String avatar;
}
