package service.impl;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mapper.GoodsMapper;
import pojo.Goods;
import service.GoodsService;

@Service
public class GoodsServiceImpl implements GoodsService {
	@Autowired GoodsMapper goodsMapper;
	@Override
	public ArrayList<Goods> list() {
		// TODO 自动生成的方法存根
		return goodsMapper.list();
	}
	@Override
	public ArrayList<Goods> types(int id) {
		// TODO 自动生成的方法存根
		return goodsMapper.types(id);
	}
	@Override
	public ArrayList<Goods> search(String value) {
		// TODO 自动生成的方法存根
		ArrayList<Goods> goodsList=list();
		ArrayList<Goods> searchList=new ArrayList<Goods>();
		for (Goods goods:goodsList) {
			if (goods.getName().contains(value)||goods.getIntro().contains(value)) {
				searchList.add(goods);
			}
		}
		return searchList;
	}
	
	@Override
	public String type(int type_id) {
		// TODO 自动生成的方法存根
		return goodsMapper.type(type_id);
	}
	@Override
	public int updateGoods(Goods goods) {
		// TODO 自动生成的方法存根
		return goodsMapper.updateGoods(goods);
	}
	
}
