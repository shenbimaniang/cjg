package com.cjg.pay.web;

import com.cjg.pay.common.dto.Page;
import com.cjg.pay.common.dto.Query;
import com.cjg.pay.common.dto.Result;
import com.cjg.pay.pojo.vo.RpAccountCustom;
import com.cjg.pay.service.AccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * User: 。。。
 * Date: 2017/10/22
 * Time: 15:20
 * Version:V1.0
 */
@Controller
@Scope("prototype")
public class AccountAction {

    @Autowired
    private AccountService accountService;


    @ResponseBody
    @RequestMapping("/accounts")
    public Result<RpAccountCustom> listRpAccounts(Page page, Query query){
        return accountService.listRpAccounts(page,query);
    }

}
