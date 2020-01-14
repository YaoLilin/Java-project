package mapper;

import java.util.ArrayList;

import pojo.Goods;

public interface GoodsMapper {
	 ArrayList<Goods> list();
	 ArrayList<Goods> types(int id);
	 String type(int type_id);
	 int updateGoods(Goods goods);
	 int deleteGoods(int id);
	 int addGoods(Goods goods);
}
