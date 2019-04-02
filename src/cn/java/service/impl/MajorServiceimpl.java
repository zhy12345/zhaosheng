/**
 * 
 */
package cn.java.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.java.entity.Major;
import cn.java.mapper.MajorMapper;
import cn.java.service.MajorService;

/**
 * @ClassName: MajorServiceimpl.java
 * Description:
 * Date：2018年8月24日-下午4:46:43
 * @author zhy
 */
@Service
public class MajorServiceimpl implements MajorService {

	@Autowired
	MajorMapper mm;
	
	@Override
	public int deleteByPrimaryKey(Integer id) {
		return mm.deleteByPrimaryKey(id);
	}
	@Override
	public int insert(Major record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insertSelective(Major record) {
		return mm.insertSelective(record);
	}

	@Override
	public Major selectByPrimaryKey(Integer id) {
		return null;
	}

	@Override
	public int updateByPrimaryKeySelective(Major record) {
		return mm.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKeyWithBLOBs(Major record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateByPrimaryKey(Major record) {
		// TODO Auto-generated method stub
		return 0;
	}
	@Override
	public List<Major> selectAllMajor(Map<String,Object> map){
		List<Major> majorlist = mm.selectAllMajor(map);
		return majorlist;
	}
	@Override
	public Major selectById(Integer id) {
		return mm.selectById(id);
	}
	@Override
	public List<Major> selectByMajorType(String majortype) {
		List<Major> majorlist = mm.selectByMajorType(majortype);
		return majorlist;
	}
	@Override
	public List<Major> selectThreeById(Major major) {
		List<Major> listmajor = mm.selectThreeById(major);
		return listmajor;
	}
	@Override
	public int updateClicknum(Integer id) {
		return mm.updateClicknum(id);
	}

}
