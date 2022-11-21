package com.spring.content.controller;

import com.alibaba.fastjson2.JSONObject;
import com.spring.content.common.ResponseResult;
import com.spring.content.common.ResultCode;
import com.spring.content.domain.dto.ShareDto;
import com.spring.content.domain.entity.Share;
import com.spring.content.domain.entity.User;
import com.spring.content.openfeign.UserService;
import com.spring.content.service.ShareService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.cloud.context.config.annotation.RefreshScope;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.client.RestTemplate;


/**
 * @description:
 * @author: mqxu
 * @date: 2022-09-06
 **/
@RestController
@Slf4j
@RequestMapping(value = "/shares")
@RequiredArgsConstructor(onConstructor = @__(@Autowired))
@RefreshScope
public class ShareController {
    private final ShareService shareService;

    private final RestTemplate restTemplate;

    private final UserService userService;

    private final String SERVICE_URL = "http://user-service";

    @Value("${enableRequest:false}")
    private Boolean enableRequest;


    /**
     * 使用 restTemplate 调用下级服务
     *
     * @return User
     */
    @GetMapping("{id}")
    public ResponseResult getShareById(@PathVariable Integer id) {
        Share share = shareService.findById(id);
        if (share != null) {
            // 获得用户id
            Integer userId = share.getUserId();
            // 通过restTemplate访问用户服务
            //User user = restTemplate.getForObject(SERVICE_URL + "/users/" + userId, User.class);

            // 通过 Openfeign 访问用户服务
            ResponseResult res = userService.getUser(userId);
            // 解析服务返回数据中的data
            Object data = res.getData();
            ShareDto shareDto;
            if (data != null) {
                // json转换为Java对象
                String jsonString = JSONObject.toJSONString(data);
                JSONObject obj = JSONObject.parseObject(jsonString);
                User user = JSONObject.parseObject(String.valueOf(obj), User.class);
                // 拼装返回数据
                shareDto = ShareDto.builder().share(share).nickName(user.getNickname()).avatar(user.getAvatar()).build();
                return ResponseResult.success(shareDto);
            } else {
                return ResponseResult.failure(ResultCode.RESULT_CODE_DATA_NONE);
            }
        } else {
            return ResponseResult.failure(ResultCode.RESULT_CODE_DATA_NONE);
        }
    }

    /**
     * 业务开关
     *
     * @return String
     */
    @GetMapping("/test")
    public String testRequest() {
        if (!enableRequest) {
            return "暂停服务";
        }
        return "服务正常";
    }
}
