package test;

import java.io.Serializable;

public class User implements Serializable {
	private String Shop_Name;
	private String Password;
	
	
	
	public User(String user_id, String password) {
		
		Shop_Name = user_id;
		Password = password;
	}
	public User() {
		// TODO Auto-generated constructor stub
	}
	public String getShop_Name() {
		return Shop_Name;
	}
	public void setShop_Name(String Shop_Name) {
		this.Shop_Name = Shop_Name;
	}
	public String getPassword() {
		return Password;
	}
	public void setPassword(String password) {
		Password = password;
	}
	
	

}
