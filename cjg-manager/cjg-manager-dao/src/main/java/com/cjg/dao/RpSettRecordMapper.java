package com.cjg.dao;

import com.cjg.pojo.po.RpSettRecord;
import com.cjg.pojo.po.RpSettRecordExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface RpSettRecordMapper {
    int countByExample(RpSettRecordExample example);

    int deleteByExample(RpSettRecordExample example);

    int deleteByPrimaryKey(String id);

    int insert(RpSettRecord record);

    int insertSelective(RpSettRecord record);

    List<RpSettRecord> selectByExample(RpSettRecordExample example);

    RpSettRecord selectByPrimaryKey(String id);

    int updateByExampleSelective(@Param("record") RpSettRecord record, @Param("example") RpSettRecordExample example);

    int updateByExample(@Param("record") RpSettRecord record, @Param("example") RpSettRecordExample example);

    int updateByPrimaryKeySelective(RpSettRecord record);

    int updateByPrimaryKey(RpSettRecord record);
}