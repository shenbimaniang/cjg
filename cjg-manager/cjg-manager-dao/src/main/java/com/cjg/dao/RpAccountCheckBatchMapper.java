package com.cjg.dao;

import com.cjg.pojo.po.RpAccountCheckBatch;
import com.cjg.pojo.po.RpAccountCheckBatchExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface RpAccountCheckBatchMapper {
    int countByExample(RpAccountCheckBatchExample example);

    int deleteByExample(RpAccountCheckBatchExample example);

    int deleteByPrimaryKey(String id);

    int insert(RpAccountCheckBatch record);

    int insertSelective(RpAccountCheckBatch record);

    List<RpAccountCheckBatch> selectByExample(RpAccountCheckBatchExample example);

    RpAccountCheckBatch selectByPrimaryKey(String id);

    int updateByExampleSelective(@Param("record") RpAccountCheckBatch record, @Param("example") RpAccountCheckBatchExample example);

    int updateByExample(@Param("record") RpAccountCheckBatch record, @Param("example") RpAccountCheckBatchExample example);

    int updateByPrimaryKeySelective(RpAccountCheckBatch record);

    int updateByPrimaryKey(RpAccountCheckBatch record);
}