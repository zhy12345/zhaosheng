package cn.java.mapper;

import java.util.Map;

import cn.java.entity.Student;

public interface StudentMapper {
    int deleteByPrimaryKey(Integer id);
   
    int  delByFilename(String filename);
    
    int insert(Student record);

    int insertSelective(Map<String, Object> map);

    Student selectByPrimaryKey(Student record);
    
    Student selectBykshandsfzh(Student record);

    int updateByPrimaryKeySelective(Student record);

    int updateByPrimaryKey(Student record);
}