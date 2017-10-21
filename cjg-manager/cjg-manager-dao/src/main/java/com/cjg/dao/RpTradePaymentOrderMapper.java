package com.cjg.dao;

import com.cjg.pojo.po.RpTradePaymentOrder;
import com.cjg.pojo.po.RpTradePaymentOrderExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface RpTradePaymentOrderMapper {
    int countByExample(RpTradePaymentOrderExample example);

    int deleteByExample(RpTradePaymentOrderExample example);

    int deleteByPrimaryKey(String id);

    int insert(RpTradePaymentOrder record);

    int insertSelective(RpTradePaymentOrder record);

    List<RpTradePaymentOrder> selectByExample(RpTradePaymentOrderExample example);

    RpTradePaymentOrder selectByPrimaryKey(String id);

    int updateByExampleSelective(@Param("record") RpTradePaymentOrder record, @Param("example") RpTradePaymentOrderExample example);

    int updateByExample(@Param("record") RpTradePaymentOrder record, @Param("example") RpTradePaymentOrderExample example);

    int updateByPrimaryKeySelective(RpTradePaymentOrder record);

    int updateByPrimaryKey(RpTradePaymentOrder record);
}