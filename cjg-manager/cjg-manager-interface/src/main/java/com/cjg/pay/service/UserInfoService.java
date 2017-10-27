package com.cjg.pay.service;

import com.cjg.pay.pojo.po.RpUserInfo;

/**
 * User: 。。。
 * Date: 2017/10/25
 * Time: 21:25
 * Version:V1.0
 */
public interface UserInfoService {
    int login(RpUserInfo userInfo);
    int checkUsername(RpUserInfo userInfo);
    int saveUser(RpUserInfo userInfo);
}
