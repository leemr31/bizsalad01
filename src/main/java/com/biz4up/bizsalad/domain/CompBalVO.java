package com.biz4up.bizsalad.domain;

public class CompBalVO {
	private String purchase_seq;
	private String address_name;
	private int price;
	private String date;
	private String company_balance_seq;
	private String type;
	
	public String getPurchase_seq() {
		return purchase_seq;
	}
	public void setPurchase_seq(String purchase_seq) {
		this.purchase_seq = purchase_seq;
	}
	public String getAddress_name() {
		return address_name;
	}
	public void setAddress_name(String address_name) {
		this.address_name = address_name;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getCompany_balance_seq() {
		return company_balance_seq;
	}
	public void setCompany_balance_seq(String company_balance_seq) {
		this.company_balance_seq = company_balance_seq;
	}
	
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	
	@Override
	public String toString() {
		return "CompBalVO [purchase_seq=" + purchase_seq + ", address_name=" + address_name + ", price=" + price
				+ ", date=" + date + ", company_balance_seq=" + company_balance_seq + ", type=" + type + "]";
	}
}
