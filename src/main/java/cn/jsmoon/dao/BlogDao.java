package cn.jsmoon.dao;

import java.util.List;
import java.util.Map;

import cn.jsmoon.entity.Blog;

/**
 * 博客Dao接口
 * @author LTQ
 *
 */
public interface BlogDao {
	
	/**
	 * 根据日期月份分组查询
	 * @return
	 */
	public List<Blog> countList();
	
	/**
	 * 分页查询博客
	 * @param map
	 * @return
	 */
	public List<Blog> list(Map<String, Object> map);
	
	/**
	 * 获取总记录数
	 * @param map
	 * @return
	 */
	public Long getTotal(Map<String, Object> map);
	
	/**
	 * 通过ID查询博客
	 * @param id
	 * @return
	 */
	public Blog findById(Integer id);
	
	/**
	 * 更新博客
	 * @param blog
	 * @return
	 */
	public Integer update(Blog blog);
	
	/**
	 * 得到上一篇博客
	 * @param id
	 * @return
	 */
	public Blog getLastBlog(Integer id);
	
	/**
	 * 得到下一篇博客
	 * @param id
	 * @return
	 */
	public Blog getNextBlog(Integer id);
	
	/**
	 * 添加博客
	 * @param blog
	 * @return
	 */
	public Integer add(Blog blog);
	
	/**
	 * 删除博客信息
	 * @param id
	 * @return
	 */
	public Integer delete(Integer id);
	
	/**
	 * 查询指定的博客类别下的博客数量
	 * @param typeId
	 * @return
	 */
	public Integer getBlogByTypeId(Integer typeId);

	/**
	 * 查询热门博客
	 * @return
	 */
	public List<Blog> getHotBlog();
	
}
