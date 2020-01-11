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
		// TODO �Զ����ɵķ������
		return goodsMapper.list();
	}
	@Override
	public ArrayList<Goods> types(int id) {
		// TODO �Զ����ɵķ������
		return goodsMapper.types(id);
	}
	@Override
	public ArrayList<Goods> search(String value) {
		// TODO �Զ����ɵķ������
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
		// TODO �Զ����ɵķ������
		return goodsMapper.type(type_id);
	}
	@Override
	public int updateGoods(Goods goods) {
		// TODO �Զ����ɵķ������
		return goodsMapper.updateGoods(goods);
	}
	
}
