/**
 * 
 */
package cn.java.service;

import java.util.List;
import java.util.Map;

import cn.java.entity.Major;

/**
 * @ClassName: MajorService.java Description: Date：2018年8月24日-下午4:48:28
 * @author zhy
 */
public interface MajorService {

	int deleteByPrimaryKey(Integer id);

	int insert(Major record);

	int insertSelective(Major record);

	Major selectByPrimaryKey(Integer id);

	int updateByPrimaryKeySelective(Major record);

	int updateByPrimaryKeyWithBLOBs(Major record);

	int updateByPrimaryKey(Major record);

	List<Major> selectAllMajor(Map<String,Object> map);

	Major selectById(Integer id);

	List<Major> selectByMajorType(String majortype);
	
	List<Major> selectThreeById(Major major);
	
	int updateClicknum(Integer id);

}