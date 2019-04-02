/**
 * 
 */
package cn.java.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.java.entity.Lunbo;
import cn.java.mapper.LunboMapper;
import cn.java.service.LunboServcie;

/**
 * @ClassName: LunboServiceimpl.java
 * Description:
 * Date：2018年10月9日-下午7:56:27
 * @author zhy
 */
@Service
public class LunboServiceimpl implements  LunboServcie {

	@Autowired
	LunboMapper lm;
	@Override
	public int deleteByPrimaryKey(Integer id) {
		return lm.deleteByPrimaryKey(id);
	}

	@Override
	public int insert(Lunbo record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insertSelective(Lunbo record) {
		return lm.insertSelective(record);
	}

	@Override
	public Lunbo selectByPrimaryKey(Integer id) {
		return null;
	}

	@Override
	public int updateByPrimaryKeySelective(Lunbo record) {
		return lm.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKey(Lunbo record) {
		return lm.updateByPrimaryKeySelective(record);
	}

	@Override
	public List<Lunbo> selectAllLuobo() {
		return lm.selectAllLuobo();
	}

}
