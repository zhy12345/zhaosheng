package cn.java.service;

import java.util.List;
import java.util.Map;

import cn.java.entity.College;

public interface CollegeService {

	int deleteByPrimaryKey(Integer id);

	int insert(College record);

	int insertSelective(College record);

	College selectByPrimaryKey(Integer id);

	List<Map<String, Object>> selectAllCollege();

	int updateByPrimaryKeySelective(College record);

	int updateByPrimaryKeyWithBLOBs(College record);

	int updateByPrimaryKey(College record);

}