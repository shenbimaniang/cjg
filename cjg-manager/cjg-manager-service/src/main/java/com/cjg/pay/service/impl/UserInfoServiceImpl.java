package com.cjg.pay.service.impl;

import com.cjg.pay.common.utils.IdUtil;
import com.cjg.pay.dao.RpUserInfoCustomMapper;
import com.cjg.pay.dao.RpUserInfoMapper;
import com.cjg.pay.pojo.po.RpUserInfo;
import com.cjg.pay.service.UserInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;

/**
 * User: 。。。
 * Date: 2017/10/25
 * Time: 21:27
 * Version:V1.0
 */
@Service
public class UserInfoServiceImpl implements UserInfoService {
    @Autowired
    private RpUserInfoCustomMapper userInfoCustomDao;

    @Autowired
    private RpUserInfoMapper userInfoDao;

    public int login(RpUserInfo userInfo) {
        int result = 0;
        RpUserInfo rpUserInfo = userInfoCustomDao.selecByUsername(userInfo.getUserName());
        if (rpUserInfo != null){
            if (rpUserInfo.getPassword().equals(userInfo.getPassword())){
                result = 1;
                return result;
            }
        }
        return result;
    }

    public int checkUsername(RpUserInfo userInfo) {
        int result = 0;
        RpUserInfo rpUserInfo = userInfoCustomDao.selecByUsername(userInfo.getUserName());
        if (rpUserInfo != null){
            result = 1;
            return result;
        }else {
            return  result;
        }
    }

    public int saveUser(RpUserInfo userInfo) {
        userInfo.setCreateTime(new Date());
        userInfo.setStatus("3");
        Long userNo = IdUtil.getItemId();
        userInfo.setId(userNo+"");
        userInfo.setUserNo(userNo+"");
        userInfo.setAccountNo(userNo+"an");
        int result = userInfoDao.insert(userInfo);
        return result;
    }
}
