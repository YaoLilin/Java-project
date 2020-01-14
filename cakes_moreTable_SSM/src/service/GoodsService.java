package service;

import java.util.ArrayList;

import pojo.Goods;

public interface GoodsService {
	public ArrayList<Goods> list();
	public ArrayList<Goods> types(int id);
	public ArrayList<Goods> search(String value);
	public String type(int type_id);
	public int updateGoods(Goods goods);
	public int deleteGoods(int id);
	public int addGoods(Goods goods);
}
