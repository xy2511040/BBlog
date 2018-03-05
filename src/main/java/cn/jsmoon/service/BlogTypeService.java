package cn.jsmoon.service;

import java.util.List;
import java.util.Map;

import cn.jsmoon.entity.BlogType;

/**
 * 博客类型service接口
 * @author LTQ
 *
 */
public interface BlogTypeService {
	
	/**
	 * 查询博客类型信息
	 * @return
	 */
	public List<BlogType> countList();
	
	/**
	 * 分页显示博客类别
	 * @param map
	 * @return
	 */
	public List<BlogType> list(Map<String, Object> map);
	
	/**
	 * 博客类别总记录数
	 * @param map
	 * @return
	 */
	public long getTotal(Map<String, Object> map);
	
	/**
	 * 添加博客类别信息
	 * @param blogType
	 * @return
	 */
	public Integer add(BlogType blogType);
	
	/**
	 * 修改博客类别信息
	 * @param blogType
	 * @return
	 */
	public Integer update(BlogType blogType);
	
	/**
	 * 删除博客类别信息
	 * @param id
	 * @return
	 */
	public Integer delete(Integer id);

	/**
	 * 查询热门博客类型
	 * @return
	 */
	public  List<BlogType> getHotBlogType();
}
