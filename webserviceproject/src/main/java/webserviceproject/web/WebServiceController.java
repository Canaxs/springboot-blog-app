package webserviceproject.web;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import webserviceproject.jdbc.UsersJdbc;
import webserviceproject.model.Blog;
import webserviceproject.service.BlogService;
import webserviceproject.service.VeriService;


@Controller
public class WebServiceController {

	@Autowired
	private BlogService blogService;
	
	@Autowired
	private VeriService veriService;
	
	@RequestMapping("/pcs")
	@ResponseBody
	public String welcome() {
		return "deneme";
	}
	@RequestMapping(value="/login.html")
	public ModelAndView loginPage() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("login");
		return mav;
	}
	@RequestMapping(value={"/admin"})
	public ModelAndView index() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("username", SecurityContextHolder.getContext().getAuthentication().getName());
		mav.setViewName("admin/index");
		return mav;
	}
	@RequestMapping(value="/create-blog",method = RequestMethod.GET)
	public ModelAndView addBlog(Model model) {
		Blog blog = new Blog();
		model.addAttribute("Blog", blog);
		ModelAndView mav = new ModelAndView();
		mav.addObject("username", SecurityContextHolder.getContext().getAuthentication().getName());
		mav.setViewName("admin/createblog");
		return mav;
	}
	@RequestMapping(value="/create-blog",method = RequestMethod.POST)
	public String addBlog(@ModelAttribute("Blog") Blog blog) {
		blogService.createOwner(blog);
		return "admin/createblog";
	}
	@RequestMapping(value="/delete-blog",method = RequestMethod.GET)
	public ModelAndView addDelete(Model model) {
		Blog blog = new Blog();
		model.addAttribute("Blog", blog);
		ModelAndView mav = new ModelAndView();
		mav.addObject("bilgi", blogService.findBlog());
		mav.setViewName("admin/deleteblog");
		return mav;
	}
	@RequestMapping(value="/delete-blog",method = RequestMethod.POST)
	public String delete(@ModelAttribute("Blog") Blog blog) {
		blogService.deleteBlog(blog.getId());
		return "admin/deleteblog";
	}
	@RequestMapping(value="/update-blog",method = RequestMethod.GET)
	public ModelAndView addUpdate(Model model) {
		Blog blog = new Blog();
		model.addAttribute("Blog", blog);
		ModelAndView mav = new ModelAndView();
		mav.addObject("bilgi", blogService.findBlog());
		mav.setViewName("admin/updateblog");
		return mav;
	}
	@RequestMapping(value="/update-blog",method = RequestMethod.POST)
	public ModelAndView update(@ModelAttribute("Blog") Blog blog) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("tek",blogService.find(blog.getId()));
		mav.setViewName("admin/updateblog");
		return mav;
	}
	@RequestMapping(value="/update2-blog",method = RequestMethod.POST)
	public ModelAndView addUpdate2(@ModelAttribute("Blog") Blog blog) {
		ModelAndView mav = new ModelAndView();
		blogService.updateBlog(blog);
		mav.setViewName("admin/updateblog");
		return mav;
	}
	@RequestMapping(value={"/deneme"})
	public ModelAndView deneme() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("deneme",blogService.findBlog());
		mav.setViewName("admin/deneme");
		return mav;
	}
	@RequestMapping(value={"/","/homepage"})
	public ModelAndView homepage() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("bilgi",blogService.findBlog());
		System.out.println(blogService.findBlog());
		mav.setViewName("homepage");
		return mav;
	}
	@RequestMapping(value={"/read/{id}"})
	public ModelAndView Read(@PathVariable("id") int id) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("bilgi",blogService.find(id));
		mav.setViewName("readmore");
		return mav;
	}
	@RequestMapping(value={"/users"})
	public ModelAndView users() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("bigo",veriService.userget());
		mav.setViewName("admin/users");
		return mav;
	}
}
