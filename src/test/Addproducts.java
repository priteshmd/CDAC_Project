package test;

import java.io.Serializable;
import java.lang.Math;

public class Addproducts implements Serializable {

	
	
	private String un_id;
	private String product_name;
	private String brand_name;
	private int quantity;
	private String product_type;
	private String color;
	private String size;
	private int price;
	private String gender;
	private String imagepath;
	private String Shop_Name;
	

	
	public String getShop_Name() {
		return Shop_Name;
	}




	public void setShop_Name(String shop_Name) {
		Shop_Name = shop_Name;
	}




	public Addproducts() {
		super();
		// TODO Auto-generated constructor stub
	}


	
	
	public String getUn_id() {
		return un_id;
	}
	public void setUn_id(String un_id) {
		this.un_id = un_id;
	}
	public String getProduct_name() {
		return product_name;
	}
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	public String getBrand_name() {
		return brand_name;
	}
	public void setBrand_name(String brand_name) {
		this.brand_name = brand_name;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public String getProduct_type() {
		return product_type;
	}
	public void setProduct_type(String product_type) {
		this.product_type = product_type;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public String getSize() {
		return size;
	}
	public void setSize(String size) {
		this.size = size;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}


	
	
	public String getImagepath() {
		return imagepath;
	}




	public void setImagepath(String imagepath) {
		this.imagepath = imagepath;
	}






	


	public Addproducts( String Shop_Name,String un_id, String product_name, String brand_name,
			int quantity, String product_type, String color, String size, int price, String gender,String image)
	{
		super();
		
		
		this.un_id = un_id;
		this.product_name = product_name;
		this.brand_name = brand_name;
		this.quantity = quantity;
		this.product_type = product_type;
		this.color = color;
		this.size = size;
		this.price = price;
		this.gender = gender;
		this.imagepath = image;
		this.Shop_Name=Shop_Name;
	}
}
