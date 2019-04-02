package cn.java.mapper;

import java.util.List;

import cn.java.entity.ZhaoShenRiLi;

public interface ZhaoShenRiLiMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(ZhaoShenRiLi record);

    int insertSelective(ZhaoShenRiLi record);

    List<ZhaoShenRiLi> selectByPrimaryKey();
    
    List<ZhaoShenRiLi> selectAllist();

    int updateByPrimaryKeySelective(ZhaoShenRiLi record);

    int updateByPrimaryKeyWithBLOBs(ZhaoShenRiLi record);

    int updateByPrimaryKey(ZhaoShenRiLi record);
}