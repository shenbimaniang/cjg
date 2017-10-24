package com.cjg.pay.web;

import com.cjg.pay.common.dto.Page;
import com.cjg.pay.common.dto.Query;
import com.cjg.pay.common.dto.Result;
import com.cjg.pay.pojo.vo.RpAccountHistoryCustom;
import com.cjg.pay.service.AccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * User: 。。。
 * Date: 2017/10/23
 * Time: 19:23
 * Version:V1.0
 */
@Controller
@Scope("prototype")
public class AccountHistoryAction {

    @Autowired
    private AccountService service;

    @ResponseBody
    @RequestMapping("/accountHistorys")
    public Result<RpAccountHistoryCustom> listAccountHistorys(Page page, Query query){
        return service.listAccountHistorys(page,query);
    }

}
