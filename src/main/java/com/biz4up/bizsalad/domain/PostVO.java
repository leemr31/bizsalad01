package com.biz4up.bizsalad.domain;

public class PostVO {
	public String option_seq;
	public String cart_seq;
	public String company_seq;
	public String address_name;
	public String address;
	public String tel;
	public int flow;
	public int total;
	public String getOption_seq() {
		return option_seq;
	}
	public void setOption_seq(String option_seq) {
		this.option_seq = option_seq;
	}
	public String getCart_seq() {
		return cart_seq;
	}
	public void setCart_seq(String cart_seq) {
		this.cart_seq = cart_seq;
	}
	public String getCompany_seq() {
		return company_seq;
	}
	public void setCompany_seq(String company_seq) {
		this.company_seq = company_seq;
	}
	public String getAddress_name() {
		return address_name;
	}
	public void setAddress_name(String address_name) {
		this.address_name = address_name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public int getFlow() {
		return flow;
	}
	public void setFlow(int flow) {
		this.flow = flow;
	}
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	@Override
	public String toString() {
		return "PostVO [option_seq=" + option_seq + ", cart_seq=" + cart_seq + ", company_seq=" + company_seq
				+ ", address_name=" + address_name + ", address=" + address + ", tel=" + tel + ", flow=" + flow
				+ ", total=" + total + "]";
	}
	
}
