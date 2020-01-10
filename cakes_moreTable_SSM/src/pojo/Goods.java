package pojo;

public class Goods {
	private int id;
	private String image;
	private float price;
	private String name;
	private String intro;
	private int stock;
	private int type_id;
	private int tops;
	public int getTops() {
		return tops;
	}

	public void setTops(int tops) {
		this.tops = tops;
	}

	public int getId() {
		return id;
	}
	
	public void setId(int id) {
		this.id = id;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	
	public int getStock() {
		return stock;
	}
	public void setStock(int stock) {
		this.stock = stock;
	}
	public int getType_id() {
		return type_id;
	}
	public void setType_id(int type_id) {
		this.type_id = type_id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getIntro() {
		return intro;
	}
	public void setIntro(String intro) {
		this.intro = intro;
	}

	@Override
	public String toString() {
		return "Goods [id=" + id + ", image=" + image + ", price=" + price + ", name=" + name + ", intro=" + intro
				+ ", stock=" + stock + ", type_id=" + type_id + "]";
	}
	
}
