/**
 * 
 */
package cn.java.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.java.entity.News;
import cn.java.mapper.NewsMapper;
import cn.java.service.NewsService;
import cn.java.utils.ClearHtmlStyle;

/**
 * @ClassName: NewsServiceimpl.java Description: Date：2018年8月20日-下午9:20:02
 * @author zhy
 */
@Service
public class NewsServiceimpl implements NewsService {
	@Autowired
	NewsMapper nm;

	@Override
	public int deleteByPrimaryKey(Integer id) {
		return nm.deleteByPrimaryKey(id);
	}

	@Override
	public int insert(News record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insertSelective(News record) {
		int flag = nm.insertSelective(record);
		if (flag == 1) {
			return 1;
		} else {
			return 0;
		}

	}

	@Override
	public List<News> selectFournews() {
		List<News> fournews = nm.selectFournews();
		ClearHtmlStyle clearHtmlStyle = new ClearHtmlStyle();
		for (News news : fournews) {
			String content = clearHtmlStyle.delTagsFContent(news.getContent());
			news.setContent(content);
		}
		return fournews;
	}
	
	@Override
	public List<News> selectFiveNewsByType(String type) {
		 List<News> fiveNews = nm.selectFiveNewsByType(type);
		 ClearHtmlStyle clearHtmlStyle = new ClearHtmlStyle();
		 for (News news : fiveNews) {
			 String content = clearHtmlStyle.delTagsFContent(news.getContent());
				news.setContent(content);
		}
		 return fiveNews;
	}


	@Override
	public List<News> selectByPrimaryKey(Integer id) {
		List<News> newslist = nm.selectByPrimaryKey(id);
		return newslist;
	}

	@Override
	public int updateByPrimaryKeySelective(News record) {
		int flag = nm.updateByPrimaryKeySelective(record);
		return flag;
	}

	@Override
	public int updateByPrimaryKeyWithBLOBs(News record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateByPrimaryKey(News record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<News> selectAllnews(Map<String,Object> map) {
		List<News> newslist = nm.selectAllnews();
		return newslist;
	}

	@Override
	public List<News> selectByType(Map<String,Object> map) {
		List<News> newslist = nm.selectByType(map);
		return newslist;
	}

	@Override
	public List<News> selectByKeyType(News news) {
		List<News> newslist = nm.selectByKeyType(news);
		return newslist;
	}

	@Override
	public int updateClicknum(Integer id) {
		int flag = nm.updateClicknum(id);
		if (flag != 0) {
			return 1;
		} else {
			return 0;
		}
	}

	@Override
	public News selectById(Integer id) {
		
		return nm.selectById(id);
	}

	
}
