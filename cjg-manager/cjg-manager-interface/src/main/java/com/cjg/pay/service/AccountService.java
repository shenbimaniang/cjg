package com.cjg.pay.service;

import com.cjg.pay.common.dto.Page;
import com.cjg.pay.common.dto.Query;
import com.cjg.pay.common.dto.Result;
import com.cjg.pay.pojo.vo.RpAccountCustom;
import com.cjg.pay.pojo.vo.RpAccountHistoryCustom;

/**
 * User: 。。。
 * Date: 2017/10/22
 * Time: 15:24
 * Version:V1.0
 */
public interface AccountService {
    Result<RpAccountCustom> listRpAccounts(Page page,Query query);
    Result<RpAccountHistoryCustom> listAccountHistorys(Page page, Query query);
}
