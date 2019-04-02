/**
 * 
 */
package cn.java.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.java.entity.VideoFile;
import cn.java.mapper.VideoFileMapper;
import cn.java.service.VideoFileService;

/**
 * @ClassName: VideoFileimpl.java
 * Description:
 * Date：2018年9月13日-上午9:59:17
 * @author zhy
 */
@Service
public class VideoFileimpl implements VideoFileService {
	@Autowired
	VideoFileMapper vm;
	
	@Override
	public int deleteByPrimaryKey(Integer id) {
		return vm.deleteByPrimaryKey(id);
	}

	@Override
	public int insert(VideoFile record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insertSelective(VideoFile record) {
		return vm.insertSelective(record);
	}

	@Override
	public VideoFile selectByPrimaryKey(Integer id) {
		return vm.selectByPrimaryKey(id);
	}

	@Override
	public int updateByPrimaryKeySelective(VideoFile record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateByPrimaryKey(VideoFile record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<VideoFile> selectByVideofrom(String videofrom) {
		return vm.selectByVideofrom(videofrom);
	}

	@Override
	public List<VideoFile> selectAllVideo(Map<String,String> map) {
		return vm.selectAllVideo(map);
	}

	@Override
	public List<VideoFile> selectVideoByFrom() {
		return vm.selectVideoByFrom();
	}

	@Override
	public Map<String, Object> selectOneVideo() {
		return vm.selectOneVideo();
	}

}
