package cn.jsmoon.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.jsmoon.dao.CommentDao;
import cn.jsmoon.entity.Comment;
import cn.jsmoon.service.CommentService;

/**
 * 用户评论Service实现类
 * @author LTQ
 *
 */
@Service("CommentService")
public class CommentServiceImpl implements CommentService{

	@Resource
	private CommentDao commentDao;
	
	public List<Comment> list(Map<String, Object> map) {
		return commentDao.list(map);
	}

	public int add(Comment comment) {
		return commentDao.add(comment);
	}

	public Long getTotal(Map<String, Object> map) {
		return commentDao.getTotal(map);
	}

	public int update(Comment comment) {
		return commentDao.update(comment);
	}

	public Integer delete(Integer id) {
		return commentDao.delete(id);
	}

}
