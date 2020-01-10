package controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import pojo.Goods;
import service.GoodsService;

@Controller
@RequestMapping("")
public class HouTaiController {
	@Autowired GoodsService goodsService;
	
	@RequestMapping("houtai")
	public ModelAndView houtai(){
		ModelAndView modelAndView=new ModelAndView("houtai");
		ArrayList<Goods> list=goodsService.list();
		modelAndView.addObject("g", list);
		System.out.println(list.get(1));
		return modelAndView;
	}
	
	@RequestMapping("update")
	public ModelAndView update(Goods goods) {
		goodsService.updateGoods(goods);
		ModelAndView modelAndView=new ModelAndView("houtai");
		return modelAndView;
	}
}
