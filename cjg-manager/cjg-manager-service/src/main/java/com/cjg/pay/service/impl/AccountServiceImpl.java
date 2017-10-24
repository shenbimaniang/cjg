package com.cjg.pay.service.impl;

import com.cjg.pay.common.dto.Page;
import com.cjg.pay.common.dto.Query;
import com.cjg.pay.common.dto.Result;
import com.cjg.pay.dao.RpAccountCustomMapper;
import com.cjg.pay.dao.RpAccountHistoryCustomMapper;
import com.cjg.pay.pojo.vo.RpAccountCustom;
import com.cjg.pay.pojo.vo.RpAccountHistoryCustom;
import com.cjg.pay.service.AccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * User: 。。。
 * Date: 2017/10/22
 * Time: 15:25
 * Version:V1.0
 */
@Service
public class AccountServiceImpl implements AccountService {

    @Autowired
    private RpAccountCustomMapper rpAccountDao;

    @Autowired
    private RpAccountHistoryCustomMapper accountHistoryDao;


    public Result<RpAccountCustom> listRpAccounts(Page page,Query query) {
        Map<String,Object> map = new HashMap<String, Object>();
        map.put("page",page);
        map.put("query",query);
        List<RpAccountCustom> list = rpAccountDao.listAccountsByPage(map);
        Long counts = rpAccountDao.countAccount(map);
        Result<RpAccountCustom> rs = new Result<RpAccountCustom>();
        rs.setRows(list);
        rs.setTotal(counts);
        return rs;
    }

    public Result<RpAccountHistoryCustom> listAccountHistorys(Page page, Query query) {
        Map<String,Object> map = new HashMap<String, Object>();
        map.put("page",page);
        map.put("query",query);
        List<RpAccountHistoryCustom> list = accountHistoryDao.listAccountHistoryByPage(map);
        long counts = accountHistoryDao.count(map);
        Result<RpAccountHistoryCustom> rs = new Result<RpAccountHistoryCustom>();
        rs.setTotal(counts);
        rs.setRows(list);
        return rs;
    }
}
