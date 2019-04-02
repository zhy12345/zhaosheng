package cn.java.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Select;

import cn.java.entity.VideoFile;

public interface VideoFileMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(VideoFile record);

    int insertSelective(VideoFile record);

    VideoFile selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(VideoFile record);

    int updateByPrimaryKey(VideoFile record);
    
    List<VideoFile> selectByVideofrom(String videofrom);
    
    List<VideoFile> selectAllVideo(Map<String,String> map);
    
    List<VideoFile> selectVideoByFrom();
    
    @Select(" SELECT *FROM videofile ORDER BY id DESC LIMIT 1")
    Map<String,Object> selectOneVideo();
}