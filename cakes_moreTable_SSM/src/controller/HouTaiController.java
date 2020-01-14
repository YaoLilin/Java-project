package controller;

import java.io.File;
import java.io.IOException;
import java.net.http.HttpRequest;
import java.util.ArrayList;
import java.util.Random;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.sun.org.apache.bcel.internal.classfile.Field;

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
	
	@RequestMapping("updateGoods")
	public ModelAndView update(Goods goods,MultipartFile pictureFile,int id,String image,
			HttpServletRequest request) throws IllegalStateException, IOException {
		if (!pictureFile.getOriginalFilename().equals("")) {
			String ext=FilenameUtils.getExtension(pictureFile.getOriginalFilename());
			String randName=UUID.randomUUID().toString().replace("-", "");
			String fileName=randName+"."+ext;
			String path=request.getServletContext().getRealPath("/picture");
			pictureFile.transferTo(new File(path+"/"+fileName));
			goods.setImage("picture/"+fileName);
		}else {
			goods.setImage(image);

			System.out.println("设置图片路径为原路径已被执行");
		}
		goods.setId(id);
		goodsService.updateGoods(goods);
		System.out.println("执行修改方法 goods属性"+goods);
		ArrayList<Goods> goodsList=goodsService.list();
		ModelAndView modelAndView=new ModelAndView("houtai");
		modelAndView.addObject("g",goodsList);
		return modelAndView;
	}
	
	@RequestMapping("addGoods")
	public ModelAndView addGoods(Goods goods,MultipartFile pictureFile,
			HttpServletRequest request)throws IllegalStateException, IOException{
		if (!pictureFile.getOriginalFilename().equals("")) {
			String ext=FilenameUtils.getExtension(pictureFile.getOriginalFilename());
			String randName=UUID.randomUUID().toString().replace("-", "");
			String fileName=randName+"."+ext;
			String path=request.getServletContext().getRealPath("/picture");
			pictureFile.transferTo(new File(path+"/"+fileName));
			goods.setImage("picture/"+fileName);
		}
		goodsService.addGoods(goods);
		System.out.println("执行添加方法 goods属性"+goods);
		ArrayList<Goods> goodsList=goodsService.list();
		ModelAndView modelAndView=new ModelAndView("houtai");
		modelAndView.addObject("g",goodsList);
		return modelAndView;
		
	}
	
}
