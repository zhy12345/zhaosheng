/**
 * 
 */
package cn.java.service;

import java.util.List;
import java.util.Map;

import cn.java.entity.VideoFile;

/**
 * @ClassName: VideoFileService.java
 * Description:
 * Date：2018年9月13日-上午10:00:08
 * @author zhy
 */
public interface VideoFileService {

	int deleteByPrimaryKey(Integer id);

	int insert(VideoFile record);

	int insertSelective(VideoFile record);

	VideoFile selectByPrimaryKey(Integer id);

	int updateByPrimaryKeySelective(VideoFile record);

	int updateByPrimaryKey(VideoFile record);
	
	List<VideoFile> selectByVideofrom(String videofrom);
	
	List<VideoFile> selectAllVideo(Map<String,String> map);
	
	List<VideoFile> selectVideoByFrom();
	
	Map<String,Object> selectOneVideo();

}