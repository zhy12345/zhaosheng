/**
 * 
 */
package cn.java.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;

import cn.java.entity.Excel;
import cn.java.mapper.ExcelMapper;
import cn.java.service.ExcelService;

/**
 * @ClassName: ExcelServiceimpl.java Description: Date：2018年8月18日-下午9:34:41
 * @author zhy
 */
@Service
public class ExcelServiceimpl implements ExcelService {

	@Autowired
	ExcelMapper em;

	@Override
	public int deleteByPrimaryKey(Integer id) {
		return em.deleteByPrimaryKey(id);
	}

	@Override
	public int insert(Excel record) {
		return  em.insert(record);
	}

	@Override
	public int insertSelective(Map<String, Object> map) {
		int flag = em.insertSelective(map);
		if (flag == 1) {
			return 1;
		} else {
			return 0;
		}

	}

	@Override
	public Excel selectByPrimaryKey(Integer id) {
		Excel ex = new Excel();
		ex = em.selectByPrimaryKey(id);
		return ex;
	}

	@Override
	public int updateByPrimaryKeySelective(Excel record) {
		return em.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKey(Excel record) {
		// TODO Auto-generated method stub
		return 0;
	}

	public List<Excel> selectByPrimaryFilesign(String filesign) {
		List<Excel> list = em.selectByPrimaryFilesign(filesign);
		return list;

	}

	@Override
	public int updateDownloadnum(Integer id) {
		int flag = em.updateDownloadnum(id);
		if (flag != 0) {
			return 1;
		} else {
			return 0;
		}

	}

	@Override
	public List<Excel> selectbyquery(Map<String, Object> map) {
		List<Excel> excellist = em.selectbyquery(map);
		return excellist;
	}

	@Override
	public List<Excel> selectexceptquery(Map<String, Object> map) {
		List<Excel> excellist = em.selectexceptquery(map);
		return excellist;
	}
	@Override
	public List<Excel> getBySign(String sign,Integer pageNum,Integer pageSize) {
		PageHelper.startPage(pageNum, pageSize);
		return em.selectBySign(sign);
	}

}
