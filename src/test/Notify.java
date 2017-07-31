package test;

import java.io.Serializable;

public class Notify implements Serializable {
@Override
	public String toString() {
		return "\""+ email + "\"" +",";
	}
private String email;
private String un_id;
public String getEmail() {
	return email;
}
public Notify(String un_id,String email) {
	super();
	this.email = email;
	this.un_id = un_id;
}
public void setEmail(String email) {
	this.email = email;
}
public String getUn_id() {
	return un_id;
}
public void setUn_id(String un_id) {
	this.un_id = un_id;
}
public Notify() {
	super();
	// TODO Auto-generated constructor stub
}
}
