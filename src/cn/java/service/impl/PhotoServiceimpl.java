/**
 * 
 */
package cn.java.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.java.entity.Photo;
import cn.java.mapper.PhotoMapper;
import cn.java.service.PhotoService;

/**
 * @ClassName: PhotoServiceimpl.java
 * Description:
 * Date：2018年9月15日-下午9:20:03
 * @author zhy
 */
@Service
public class PhotoServiceimpl implements PhotoService {

	@Autowired
	PhotoMapper pm;
	@Override
	public int deleteByPrimaryKey(Integer id) {
		return pm.deleteByPrimaryKey(id);
	}

	@Override
	public int insert(Photo record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insertSelective(Map<String,Object> photo) {
		return pm.insertSelective(photo);
	}

	@Override
	public Photo selectByPrimaryKey(Integer id) {
		return pm.selectByPrimaryKey(id);
	}

	@Override
	public int updateByPrimaryKeySelective(Photo record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateByPrimaryKey(Photo record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Photo> selectBySign(String sign) {
		return pm.selectBySign(sign);
	}

	@Override
	public List<Photo> selectThreePhotoBySign(String sign) {
		return  pm.selectThreePhotoBySign(sign);
	}

}
