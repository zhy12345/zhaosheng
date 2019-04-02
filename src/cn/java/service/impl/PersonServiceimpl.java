/**
 * 
 */
package cn.java.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.java.entity.Person;
import cn.java.mapper.PersonMapper;
import cn.java.service.PersonService;

/**
 * @ClassName: PersonServiceimpl.java Description: Date：2018年8月24日-下午4:47:21
 * @author zhy
 */
@Service
public class PersonServiceimpl implements PersonService {

	@Autowired
	PersonMapper pm ; 
	
	
	@Override
	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insert(Person record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insertSelective(Person record) {
		return pm.insertSelective(record);
	}

	@Override
	public Person selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}
	public Person selectByusername (String usename) {
		Person person = new Person();
		person = pm.selectByusername(usename);
		return person;
	}

	@Override
	public int updateByPrimaryKeySelective(Person record) {
		return pm.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKey(Person record) {
		// TODO Auto-generated method stub
		return 0;
	}

}
