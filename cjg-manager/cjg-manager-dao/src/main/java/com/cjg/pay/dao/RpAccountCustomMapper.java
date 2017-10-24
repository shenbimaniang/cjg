package com.cjg.pay.dao;

import com.cjg.pay.pojo.vo.RpAccountCustom;

import java.util.List;
import java.util.Map;

/**
 * User: 。。。
 * Date: 2017/10/22
 * Time: 17:07
 * Version:V1.0
 */
public interface RpAccountCustomMapper {
    List<RpAccountCustom> listAccountsByPage(Map<String,Object> map);
    long countAccount(Map<String,Object> map);
}
