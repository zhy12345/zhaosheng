package cn.java.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Select;

import cn.java.entity.News;

public interface NewsMapper {
	int deleteByPrimaryKey(Integer id);

	int insert(News record);

	int insertSelective(News record);

	List<News> selectByPrimaryKey(Integer id);
	
	List<News> selectByKeyType(News news);

	int updateByPrimaryKeySelective(News record);

	int updateByPrimaryKeyWithBLOBs(News record);

	int updateByPrimaryKey(News record);

	List<News> selectFournews();

	List<News> selectAllnews();
	
	List<News> selectByType(Map<String,Object> map);
	
	@Select("SELECT *FROM `news` WHERE `type` = #{arg0} ORDER BY id DESC LIMIT 5")
	List<News> selectFiveNewsByType(String type);
	
	int updateClicknum(Integer id );
	
	News selectById(Integer id);
}