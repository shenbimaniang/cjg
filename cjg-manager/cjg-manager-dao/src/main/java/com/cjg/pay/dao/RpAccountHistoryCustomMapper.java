package com.cjg.pay.dao;

import com.cjg.pay.pojo.vo.RpAccountHistoryCustom;

import java.util.List;
import java.util.Map;

/**
 * User: 。。。
 * Date: 2017/10/23
 * Time: 19:43
 * Version:V1.0
 */
public interface RpAccountHistoryCustomMapper {
    List<RpAccountHistoryCustom> listAccountHistoryByPage(Map<String,Object> map);
    long count(Map<String,Object> map);
}
