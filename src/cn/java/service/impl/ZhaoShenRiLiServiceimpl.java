/**
 * 
 */
package cn.java.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.java.entity.ZhaoShenRiLi;
import cn.java.mapper.ZhaoShenRiLiMapper;
import cn.java.service.ZhaoShenRiLiService;

/**
 * @ClassName: ZhaoShenRiLiServiceimpl.java
 * Description:
 * Date：2018年8月29日-下午2:31:04
 * @author zhy
 */
@Service
public class ZhaoShenRiLiServiceimpl implements ZhaoShenRiLiService {

	@Autowired
	ZhaoShenRiLiMapper zm;
	@Override
	public int deleteByPrimaryKey(Integer id) {
		return zm.deleteByPrimaryKey(id);
	}

	@Override
	public int insert(ZhaoShenRiLi record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insertSelective(ZhaoShenRiLi record) {
		return zm.insertSelective(record);
	}

	@Override
	public List<ZhaoShenRiLi> selectByPrimaryKey() {
		return zm.selectByPrimaryKey();
	}
	@Override
	public List<ZhaoShenRiLi> selectAllist() {
		return zm.selectByPrimaryKey();
	}

	@Override
	public int updateByPrimaryKeySelective(ZhaoShenRiLi record) {
		return zm.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKeyWithBLOBs(ZhaoShenRiLi record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateByPrimaryKey(ZhaoShenRiLi record) {
		// TODO Auto-generated method stub
		return 0;
	}

	
}
