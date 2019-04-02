package cn.java.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Select;

import cn.java.entity.College;

public interface CollegeMapper {
	
    int deleteByPrimaryKey(Integer id);

    int insert(College record);

    int insertSelective(College record);

    College selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(College record);

    int updateByPrimaryKeyWithBLOBs(College record);

    int updateByPrimaryKey(College record);
    
    @Select("select * from `college`")
    List<Map<String,Object>> selectAllCollege();
}