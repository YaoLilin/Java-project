package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.druid.filter.AutoLoad;

import service.GoodsService;

@Controller
@RequestMapping("")
public class UserController {
	@Autowired
	GoodsService goodsService;
	
	@RequestMapping("login")
	public ModelAndView login() {
		ModelAndView modelAndView=new ModelAndView("login");
		return modelAndView;
	}
	
}
