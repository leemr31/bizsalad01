package com.biz4up.bizsalad.domain;

public class CartAddressVO {
	public String cart_seq;
	public String user_address_seq;
	public String user_seq;
	public String address_name;
	public String address1;
	public String address2;
	public String post_code;
	public String tel;
	public int usable;
	public int saved;
	public String getCart_seq() {
		return cart_seq;
	}
	public void setCart_seq(String cart_seq) {
		this.cart_seq = cart_seq;
	}
	public String getUser_address_seq() {
		return user_address_seq;
	}
	public void setUser_address_seq(String user_address_seq) {
		this.user_address_seq = user_address_seq;
	}
	public String getUser_seq() {
		return user_seq;
	}
	public void setUser_seq(String user_seq) {
		this.user_seq = user_seq;
	}
	public String getAddress_name() {
		return address_name;
	}
	public void setAddress_name(String address_name) {
		this.address_name = address_name;
	}
	public String getAddress1() {
		return address1;
	}
	public void setAddress1(String address1) {
		this.address1 = address1;
	}
	public String getAddress2() {
		return address2;
	}
	public void setAddress2(String address2) {
		this.address2 = address2;
	}
	public String getPost_code() {
		return post_code;
	}
	public void setPost_code(String post_code) {
		this.post_code = post_code;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public int getUsable() {
		return usable;
	}
	public void setUsable(int usable) {
		this.usable = usable;
	}
	public int getSaved() {
		return saved;
	}
	public void setSaved(int saved) {
		this.saved = saved;
	}
	@Override
	public String toString() {
		return "UserAddressVO [cart_seq=" + cart_seq + ", user_address_seq=" + user_address_seq + ", user_seq="
				+ user_seq + ", address_name=" + address_name + ", address1=" + address1 + ", address2=" + address2
				+ ", post_code=" + post_code + ", tel=" + tel + ", usable=" + usable + ", saved=" + saved + "]";
	}
	
}
