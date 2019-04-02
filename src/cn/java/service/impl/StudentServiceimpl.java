/**
 * 
 */
package cn.java.service.impl;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.java.entity.Student;
import cn.java.mapper.StudentMapper;
import cn.java.service.StudentService;

/**
 * @ClassName: StudentServiceimpl.java Description: Date：2018年8月18日-下午5:04:50
 * @author zhy
 */
@Service
public class StudentServiceimpl implements StudentService {

	@Autowired
	StudentMapper sm;

	@Override
	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return 0;
	}


	@Override
	public int insert(Student record) {
		return 0;

	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * cn.java.service.impl.StudentService#insertSelective(cn.java.entity.Student)
	 */
	@Override
	public int insertSelective(Map<String, Object> map) {
		int flag = sm.insertSelective(map);
		if (flag == 1) {
			return 1;
		} else {
			return 0;
		}
	}

	@Override
	public Student selectByPrimaryKey(Student record) {
		return sm.selectByPrimaryKey(record);
	}

	@Override
	public int updateByPrimaryKeySelective(Student record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateByPrimaryKey(Student record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delByFilename(String filename) {
		return sm.delByFilename(filename);
	}

	@Override
	public Student selectBykshandsfzh(Student record) {
		return sm.selectBykshandsfzh(record);
	}

}
