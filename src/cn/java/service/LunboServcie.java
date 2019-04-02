/**
 * 
 */
package cn.java.service;

import java.util.List;

import cn.java.entity.Lunbo;

/**
 * @ClassName: LunboServcie.java
 * Description:
 * Date：2018年10月9日-下午7:56:45
 * @author zhy
 */
public interface LunboServcie {

	int deleteByPrimaryKey(Integer id);

	int insert(Lunbo record);

	int insertSelective(Lunbo record);

	Lunbo selectByPrimaryKey(Integer id);
	
	List<Lunbo> selectAllLuobo();

	int updateByPrimaryKeySelective(Lunbo record);

	int updateByPrimaryKey(Lunbo record);

}