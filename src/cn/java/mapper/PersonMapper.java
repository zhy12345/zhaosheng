package cn.java.mapper;

import cn.java.entity.Person;

public interface PersonMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Person record);

    int insertSelective(Person record);

    Person selectByPrimaryKey(Integer id);
    
    Person selectByusername (String usename);

    int updateByPrimaryKeySelective(Person record);

    int updateByPrimaryKey(Person record);
}