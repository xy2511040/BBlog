package cn.jsmoon.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import cn.jsmoon.entity.Blogger;
import cn.jsmoon.service.BloggerService;
import cn.jsmoon.util.CryptographyUtil;

/**
 * 博主Controller层
 * @author LTQ
 *
 */
@Controller
@RequestMapping("/blogger")
public class BloggerController {
	
	@Resource
	private BloggerService bloggerService;
	
	@RequestMapping("/login")
	public String login(Blogger blogger,HttpServletRequest request)throws Exception{
		Subject subject = SecurityUtils.getSubject();
		UsernamePasswordToken token=new UsernamePasswordToken(blogger.getUserName(), CryptographyUtil.md5(blogger.getPassword(), "jsmoon"));
		try{
			subject.login(token);	//身份认证   调用Myrealm中的身份验证方法
			return "redirect:/admin/main.jsp";
		}catch(Exception e){
			e.printStackTrace();
			request.setAttribute("blogger", blogger);
			request.setAttribute("errotInfo", "账号或密码错误");
			return "login";
		}
	}
	
	/**
	 * 关于我啊
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/aboutMe")
	public ModelAndView aboutMe()throws Exception{
		ModelAndView mav=new ModelAndView();
		mav.addObject("mainPage", "foreground/blogger/info.jsp");
		mav.addObject("pageTitle", "关于我啊---江山月下博客");
		mav.setViewName("index");
		return mav;
	}
}
