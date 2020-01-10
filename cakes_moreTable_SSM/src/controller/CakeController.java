package controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import pojo.Goods;
import service.GoodsService;

@RequestMapping("")
@Controller
public class CakeController {
	@Autowired GoodsService goodsService;
	
//	首页
	@RequestMapping("index")
	public ModelAndView index() {
		ModelAndView modelAndView=new ModelAndView("index");
		ArrayList<Goods> list=goodsService.list();
		modelAndView.addObject("g", list);
		System.out.println(list.get(0));	
		return modelAndView;
	}
	
//	查找类别
	@RequestMapping("types")
	public ModelAndView types(int id,HttpSession session) {
		ModelAndView modelAndView=new ModelAndView("index");
		ArrayList<Goods> goodsList=goodsService.types(id);
		String type=goodsService.type(id);
		modelAndView.addObject("g",goodsList );
//		session.setAttribute("position", 2);
		modelAndView.addObject("message", "您正浏览："+type);
		return modelAndView;
	}
	
//	搜索
	@RequestMapping("search")
	public ModelAndView types(String value,HttpSession session) {
		ModelAndView modelAndView=new ModelAndView("index");
		ArrayList<Goods> goodsList=goodsService.search(value);
		modelAndView.addObject("g",goodsList );
//		session.setAttribute("position", 2);
		modelAndView.addObject("message", value+" 的搜索结果");
		return modelAndView;
	}
}
