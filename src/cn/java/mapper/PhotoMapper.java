package cn.java.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Select;

import cn.java.entity.Photo;

public interface PhotoMapper {
	
    int deleteByPrimaryKey(Integer id);

    int insert(Photo record);

    int insertSelective(Map<String,Object> photo);

    Photo selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Photo record);

    int updateByPrimaryKey(Photo record);
    
    List<Photo> selectBySign(String sign);
    
    @Select("select *from `photo` where `sign` = #{arg0} order by id desc limit 3")
    List<Photo> selectThreePhotoBySign(String sign);
}