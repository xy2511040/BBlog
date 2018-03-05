package cn.jsmoon.entity;

import java.util.Date;

/**
 * 用户留言实体类
 * @author LTQ
 *
 */
public class Comment {
	private Integer id;	//ID
	private String userIp;	// 用户IP地址
	private Blog blog;	//留言博客
	private String content;	//留言内容
	private Date commentDate; //留言时间
	private Integer state;	//留言内容是否通过审核   0待验证，1通过，2不通过
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getUserIp() {
		return userIp;
	}
	public void setUserIp(String userIp) {
		this.userIp = userIp;
	}
	public Blog getBlog() {
		return blog;
	}
	public void setBlog(Blog blog) {
		this.blog = blog;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getCommentDate() {
		return commentDate;
	}
	public void setCommentDate(Date commentDate) {
		this.commentDate = commentDate;
	}
	public Integer getState() {
		return state;
	}
	public void setState(Integer state) {
		this.state = state;
	}
	
	
}
