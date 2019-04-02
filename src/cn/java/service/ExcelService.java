/**
 * 
 */
package cn.java.service;

import java.util.List;
import java.util.Map;

import cn.java.entity.Excel;

/**
 * @ClassName: ExcelService.java Description: Date：2018年8月18日-下午9:35:09
 * @author zhy
 */
public interface ExcelService {

	int deleteByPrimaryKey(Integer id);

	int insert(Excel record);

	int insertSelective(Map<String, Object> map);

	Excel selectByPrimaryKey(Integer id);

	int updateByPrimaryKeySelective(Excel record);

	int updateByPrimaryKey(Excel record);

	List<Excel> selectByPrimaryFilesign(String filesign);

	int updateDownloadnum(Integer id);

	List<Excel> selectbyquery(Map<String, Object> map);

	List<Excel> selectexceptquery(Map<String, Object> map);
	
	List<Excel> getBySign(String sign,Integer pageNum, Integer pageSize);

}