package com.cjg.pay.dao;

import com.cjg.pay.pojo.po.RpUserInfo;

/**
 * User: 。。。
 * Date: 2017/10/25
 * Time: 21:43
 * Version:V1.0
 */
public interface RpUserInfoCustomMapper {
    RpUserInfo selecByUsername(String userName);
}
