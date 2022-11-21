package com.spring.content.service;

import com.spring.content.domain.entity.Share;
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
    
}
