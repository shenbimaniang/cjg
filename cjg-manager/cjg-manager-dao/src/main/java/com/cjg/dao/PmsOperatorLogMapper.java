package com.cjg.dao;

import com.cjg.pojo.po.PmsOperatorLog;
import com.cjg.pojo.po.PmsOperatorLogExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface PmsOperatorLogMapper {
    int countByExample(PmsOperatorLogExample example);

    int deleteByExample(PmsOperatorLogExample example);

    int deleteByPrimaryKey(Long id);

    int insert(PmsOperatorLog record);

    int insertSelective(PmsOperatorLog record);

    List<PmsOperatorLog> selectByExample(PmsOperatorLogExample example);

    PmsOperatorLog selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") PmsOperatorLog record, @Param("example") PmsOperatorLogExample example);

    int updateByExample(@Param("record") PmsOperatorLog record, @Param("example") PmsOperatorLogExample example);

    int updateByPrimaryKeySelective(PmsOperatorLog record);

    int updateByPrimaryKey(PmsOperatorLog record);
}