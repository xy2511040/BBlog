package cn.jsmoon.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.jsmoon.dao.BloggerDao;
import cn.jsmoon.entity.Blogger;
import cn.jsmoon.service.BloggerService;

/**
 * 博主Service实现类
 * @author LTQ
 *
 */
@Service("bloggerService")
public class BloggerServiceImpl implements BloggerService{

	@Resource
	private BloggerDao bloggerDao;
	
	public Blogger getByUserName(String userName) {
		return bloggerDao.getByUserName(userName);
	}

	public Blogger find() {
		return bloggerDao.find();
	}

	public Integer update(Blogger blogger) {
		return bloggerDao.update(blogger);
	}

}
