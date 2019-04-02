package cn.java.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Select;

import cn.java.entity.Excel;

public interface ExcelMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Excel record);

    int insertSelective(Map<String, Object> map);

    Excel selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Excel record);

    int updateByPrimaryKey(Excel record);
    
    List<Excel> selectByPrimaryFilesign(String filesign);
    
    int updateDownloadnum(Integer id);
    
    List<Excel> selectexceptquery(Map<String, Object> map);
    
    List<Excel> selectbyquery(Map<String, Object> map);
    
    @Select("select * from excelfile where  filesign = #{0}")
    List<Excel> selectBySign(String sign);
} 