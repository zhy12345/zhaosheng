/**
 * 
 */
package cn.java.service;

import java.util.List;
import java.util.Map;

import cn.java.entity.News;

/**
 * @ClassName: NewsService.java Description: Date：2018年8月20日-下午9:20:24
 * @author zhy
 */
public interface NewsService {

	int deleteByPrimaryKey(Integer id);

	int insert(News record);

	int insertSelective(News record);

	List<News> selectByPrimaryKey(Integer id);

	List<News> selectByKeyType(News news);

	int updateByPrimaryKeySelective(News record);

	int updateByPrimaryKeyWithBLOBs(News record);

	int updateByPrimaryKey(News record);

	List<News> selectFournews();

	List<News> selectAllnews(Map<String,Object> map);

	List<News> selectByType(Map<String,Object> map);
	
	List<News> selectFiveNewsByType(String type);
	
	int updateClicknum(Integer id );
	
	News selectById(Integer id);

}