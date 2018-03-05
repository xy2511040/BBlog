package cn.jsmoon.dao;

import java.util.List;
import java.util.Map;

import cn.jsmoon.entity.Comment;

/**
 * 用户评论Dao接口
 * @author LTQ
 *
 */
public interface CommentDao {
	
	/**
	 * 查询用户评论信息
	 * @param map
	 * @return
	 */
	public List<Comment> list(Map<String, Object> map);
	
	/**
	 * 添加评论
	 * @param comment
	 * @return
	 */
	public int add(Comment comment);
	
	/**
	 * 获取总记录数
	 * @param map
	 * @return
	 */
	public Long getTotal(Map<String, Object> map);
	
	/**
	 * 修改评论
	 * @param comment
	 * @return
	 */
	public int update(Comment comment);
	
	/**
	 * 删除博客类别信息
	 * @param id
	 * @return
	 */
	public Integer delete(Integer id);
}
