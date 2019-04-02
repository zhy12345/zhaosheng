/**
 * 
 */
package cn.java.service;

import java.util.List;
import java.util.Map;

import cn.java.entity.Photo;

/**
 * @ClassName: PhotoService.java
 * Description:
 * Date：2018年9月15日-下午9:22:16
 * @author zhy
 */
public interface PhotoService {

	int deleteByPrimaryKey(Integer id);

	int insert(Photo record);

	int insertSelective(Map<String,Object> photo);

	Photo selectByPrimaryKey(Integer id);

	int updateByPrimaryKeySelective(Photo record);

	int updateByPrimaryKey(Photo record);
	
	List<Photo> selectBySign(String sign);
	
	List<Photo> selectThreePhotoBySign(String sign);
	
}