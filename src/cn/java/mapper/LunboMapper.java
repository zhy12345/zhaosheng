package cn.java.mapper;

import java.util.List;

import cn.java.entity.Lunbo;

public interface LunboMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Lunbo record);

    int insertSelective(Lunbo record);

    Lunbo selectByPrimaryKey(Integer id);
    
    List<Lunbo> selectAllLuobo();

    int updateByPrimaryKeySelective(Lunbo record);

    int updateByPrimaryKey(Lunbo record);
}