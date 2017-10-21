package com.cjg.dao;

import com.cjg.pojo.po.PmsOperator;
import com.cjg.pojo.po.PmsOperatorExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface PmsOperatorMapper {
    int countByExample(PmsOperatorExample example);

    int deleteByExample(PmsOperatorExample example);

    int deleteByPrimaryKey(Long id);

    int insert(PmsOperator record);

    int insertSelective(PmsOperator record);

    List<PmsOperator> selectByExample(PmsOperatorExample example);

    PmsOperator selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") PmsOperator record, @Param("example") PmsOperatorExample example);

    int updateByExample(@Param("record") PmsOperator record, @Param("example") PmsOperatorExample example);

    int updateByPrimaryKeySelective(PmsOperator record);

    int updateByPrimaryKey(PmsOperator record);
}