package cn.jsmoon.service.impl;

import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.stereotype.Component;

import cn.jsmoon.entity.Blog;
import cn.jsmoon.entity.BlogType;
import cn.jsmoon.entity.Blogger;
import cn.jsmoon.entity.Link;
import cn.jsmoon.service.BlogService;
import cn.jsmoon.service.BlogTypeService;
import cn.jsmoon.service.BloggerService;
import cn.jsmoon.service.LinkService;

@Component
public class InitComponent implements ServletContextListener,ApplicationContextAware{

	private static ApplicationContext applicationContext;
	
	public void contextInitialized(ServletContextEvent sce) {
		ServletContext application=sce.getServletContext();

		BloggerService bloggerService=(BloggerService) applicationContext.getBean("bloggerService");
		Blogger blogger=bloggerService.find(); // 获取博主信息
		blogger.setPassword(null);
		application.setAttribute("blogger", blogger);
		
		LinkService linkService=(LinkService) applicationContext.getBean("linkService");
		List<Link> linkList=linkService.list(null); // 查询所有的友情链接信息
		application.setAttribute("linkList", linkList);
		
		BlogTypeService blogTypeService=(BlogTypeService) applicationContext.getBean("blogTypeService");
		List<BlogType> blogTypeCountList=blogTypeService.countList(); // 查询博客类别以及博客的数量
		application.setAttribute("blogTypeCountList", blogTypeCountList);

		List<BlogType> hotBlogType = blogTypeService.getHotBlogType();
		application.setAttribute("hotBlogType", hotBlogType);

		BlogService blogService=(BlogService) applicationContext.getBean("blogService");
		List<Blog> blogCountList=blogService.countList(); // 根据日期分组查询博客
		application.setAttribute("blogCountList", blogCountList);

		List<Blog> hotBlog = blogService.getHotBlog();//获取热门博客
		for(Blog blog:hotBlog){
			List<String> imageList = blog.getImageList();
			String blogInfo = blog.getContent();
			Document doc = Jsoup.parse(blogInfo);
			Elements jpgs = doc.select("img");
			/**
			 * v1.0版本需要3张图片
			 * v2.0版本只需要1张图片
			 */
			for(int i=0;i<jpgs.size();i++){
				Element jpg = jpgs.get(i);
				String url = jpg.attr("src");
				imageList.add(url);
				if(i==0){
					break;
				}
			}
			application.setAttribute("hotBlog", hotBlog);
		}



	}

	public void contextDestroyed(ServletContextEvent sce) {
		// TODO Auto-generated method stub
		
	}

	public void setApplicationContext(ApplicationContext applicationContext) throws BeansException {
		this.applicationContext=applicationContext;
	}

}
