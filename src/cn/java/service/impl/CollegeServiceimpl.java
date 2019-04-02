package cn.java.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.java.entity.College;
import cn.java.mapper.CollegeMapper;
import cn.java.service.CollegeService;

@Service
public class CollegeServiceimpl implements CollegeService {

	@Autowired
	CollegeMapper collegeMapper;
	
	@Override
	public int deleteByPrimaryKey(Integer id) {
		return collegeMapper.deleteByPrimaryKey(id);
	}

	@Override
	public int insert(College record) {
		return 0;
	}

	@Override
	public int insertSelective(College record) {
		return collegeMapper.insertSelective(record);
	}

	@Override
	public College selectByPrimaryKey(Integer id) {
		return null;
	}

	@Override
	public int updateByPrimaryKeySelective(College record) {
		return collegeMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKeyWithBLOBs(College record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateByPrimaryKey(College record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Map<String, Object>> selectAllCollege() {
		return collegeMapper.selectAllCollege();
	}

}
