package cn.jsmoon.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import cn.jsmoon.entity.BlogType;
import cn.jsmoon.service.BlogTypeService;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import cn.jsmoon.entity.Blog;
import cn.jsmoon.entity.PageBean;
import cn.jsmoon.service.BlogService;
import cn.jsmoon.util.PageUtil;
import cn.jsmoon.util.StringUtil;

/**
 * 主页Contrller
 * @author LTQ
 *
 */
@Controller
@RequestMapping("/")
public class IndexContrller {

	@Resource
	private BlogService blogService;

	
	/**
	 * 请求主页
	 * @return
	 */
	@RequestMapping("/index")
	public ModelAndView index(@RequestParam(value="page",required=false)String page,@RequestParam(value="typeId",required=false)String typeId,@RequestParam(value="releaseDateStr",required=false)String releaseDateStr,HttpServletRequest request)throws Exception{
		ModelAndView mav=new ModelAndView();
		if(StringUtil.isEmpty(page)){
			page="1";
		}
		PageBean pageBean=new PageBean(Integer.parseInt(page),15);
		Map<String,Object> map=new HashMap<String,Object>();
		map.put("start", pageBean.getStart());
		map.put("size", pageBean.getPageSize());
		map.put("typeId", typeId);
		map.put("releaseDateStr", releaseDateStr);
		/*总博客*/
		List<Blog> blogList=blogService.list(map);
		for(Blog blog:blogList){
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
				String src = jpg.attr("src");
				imageList.add(src);
				if(i==0){
					break;
				}
			}

		}
		mav.addObject("blogList", blogList);

		StringBuffer param=new StringBuffer();
		if(StringUtil.isNotEmpty(typeId)){
			param.append("typeId=" + typeId + "&");
		}
		if(StringUtil.isNotEmpty(releaseDateStr)){
			param.append("releaseDateStr=" + releaseDateStr + "&");
		}
		mav.addObject("pageCode", PageUtil.genPagination(request.getContextPath()+"/index.html", blogService.getTotal(map), Integer.parseInt(page), 15, param.toString()));
		mav.addObject("pageTitle", "江山月下博客");
		mav.addObject("mainPage", "foreground/blog/list.jsp");
		mav.setViewName("index");
		return mav;
	}
	
	/**
	 * 各种福利下载
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/download")
	public ModelAndView download()throws Exception{
		ModelAndView mav=new ModelAndView();
		mav.addObject("mainPage", "foreground/system/download.jsp");
		mav.addObject("pageTitle", "各种福利呀---江山月下博客");
		mav.setViewName("mainTemp");
		return mav;
	}
	
}
