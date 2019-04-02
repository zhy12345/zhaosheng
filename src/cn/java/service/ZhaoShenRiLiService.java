/**
 * 
 */
package cn.java.service;

import java.util.List;

import cn.java.entity.ZhaoShenRiLi;

/**
 * @ClassName: ZhaoShenRiLiService.java
 * Description:
 * Date：2018年8月29日-下午2:31:29
 * @author zhy
 */
public interface ZhaoShenRiLiService {

	int deleteByPrimaryKey(Integer id);

	int insert(ZhaoShenRiLi record);

	int insertSelective(ZhaoShenRiLi record);

	List<ZhaoShenRiLi> selectByPrimaryKey();
	
	List<ZhaoShenRiLi> selectAllist();

	int updateByPrimaryKeySelective(ZhaoShenRiLi record);

	int updateByPrimaryKeyWithBLOBs(ZhaoShenRiLi record);

	int updateByPrimaryKey(ZhaoShenRiLi record);

}