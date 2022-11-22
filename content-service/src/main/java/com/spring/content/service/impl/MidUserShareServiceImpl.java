package com.spring.content.service.impl;

import com.spring.content.domain.entity.MidUserShare;
import com.spring.content.repository.MidUserShareRepository;
import com.spring.content.service.MidUserShareService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @description:
 * @author: mqxu
 * @date: 2022-11-22
 **/
@Slf4j
@Service
@RequiredArgsConstructor(onConstructor = @__(@Autowired))
public class MidUserShareServiceImpl implements MidUserShareService {
    private final MidUserShareRepository midUserShareRepository;

    @Override
    public void insert(MidUserShare midUserShare) {
        midUserShareRepository.save(midUserShare);
    }
}
