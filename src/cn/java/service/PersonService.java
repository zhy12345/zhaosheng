/**
 * 
 */
package cn.java.service;

import cn.java.entity.Person;

/**
 * @ClassName: PersonService.java
 * Description:
 * Date：2018年8月24日-下午4:48:01
 * @author zhy
 */
public interface PersonService {

	int deleteByPrimaryKey(Integer id);

	int insert(Person record);

	int insertSelective(Person record);

	Person selectByPrimaryKey(Integer id);
	
	Person selectByusername (String usename);

	int updateByPrimaryKeySelective(Person record);

	int updateByPrimaryKey(Person record);

}