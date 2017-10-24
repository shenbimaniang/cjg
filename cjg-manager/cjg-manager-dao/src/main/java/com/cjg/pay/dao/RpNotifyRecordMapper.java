package com.cjg.pay.dao;

import com.cjg.pay.pojo.po.RpNotifyRecord;
import com.cjg.pay.pojo.po.RpNotifyRecordExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface RpNotifyRecordMapper {
    int countByExample(RpNotifyRecordExample example);

    int deleteByExample(RpNotifyRecordExample example);

    int deleteByPrimaryKey(String id);

    int insert(RpNotifyRecord record);

    int insertSelective(RpNotifyRecord record);

    List<RpNotifyRecord> selectByExample(RpNotifyRecordExample example);

    RpNotifyRecord selectByPrimaryKey(String id);

    int updateByExampleSelective(@Param("record") RpNotifyRecord record, @Param("example") RpNotifyRecordExample example);

    int updateByExample(@Param("record") RpNotifyRecord record, @Param("example") RpNotifyRecordExample example);

    int updateByPrimaryKeySelective(RpNotifyRecord record);

    int updateByPrimaryKey(RpNotifyRecord record);
}