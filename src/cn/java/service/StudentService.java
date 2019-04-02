/**
 * 
 */
package cn.java.service;

import java.util.Map;

import cn.java.entity.Student;

/**
 * @ClassName: StudentService.java Description: Date：2018年8月18日-下午5:06:09
 * @author zhy
 */
public interface StudentService {

	int deleteByPrimaryKey(Integer id);

	int delByFilename(String filename);

	int insert(Student record);

	int insertSelective(Map<String, Object> map);

	Student selectByPrimaryKey(Student record);
	
	Student selectBykshandsfzh(Student record);

	int updateByPrimaryKeySelective(Student record);

	int updateByPrimaryKey(Student record);

}