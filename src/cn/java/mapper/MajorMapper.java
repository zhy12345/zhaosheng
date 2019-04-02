package cn.java.mapper;

import java.util.List;
import java.util.Map;

import cn.java.entity.Major;

public interface MajorMapper {
	int deleteByPrimaryKey(Integer id);

	int insert(Major record);

	int insertSelective(Major record);

	Major selectByPrimaryKey(Integer id);

	List<Major> selectByMajorType(String majortype);

	int updateByPrimaryKeySelective(Major record);

	int updateByPrimaryKeyWithBLOBs(Major record);

	int updateByPrimaryKey(Major record);

	List<Major> selectAllMajor(Map<String,Object> map);

	Major selectById(Integer id);

	List<Major> selectThreeById(Major major);
	
	int updateClicknum(Integer id);
}