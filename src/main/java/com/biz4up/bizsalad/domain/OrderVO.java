package com.biz4up.bizsalad.domain;

import java.sql.Date;

public class OrderVO{
	private String option_seq;
	private String cart_seq;
	private String material_seq;
	private String company_seq;
	private String cart_option;
	private Date accept_date;
	private Date work_date;
	private int day;
	private int accept;
	private int work;
	private String order_seq;
	private String purchase_seq;
	private int quantity;
	private Double price;
	private String type;
	private Date ordered_date;
	
	public String getCart_option() {
		return cart_option;
	}
	public void setCart_option(String cart_option) {
		this.cart_option = cart_option;
	}
	public String getOption_seq() {
		return option_seq;
	}
	public void setOption_seq(String option_seq) {
		this.option_seq = option_seq;
	}
	public String getMaterial_seq() {
		return material_seq;
	}
	public void setMaterial_seq(String material_seq) {
		this.material_seq = material_seq;
	}
	public String getCompany_seq() {
		return company_seq;
	}
	public void setCompany_seq(String company_seq) {
		this.company_seq = company_seq;
	}
	public Date getAccept_date() {
		return accept_date;
	}
	public void setAccept_date(Date accept_date) {
		this.accept_date = accept_date;
	}
	public Date getWork_date() {
		return work_date;
	}
	public void setWork_date(Date work_date) {
		this.work_date = work_date;
	}
	public int getDay() {
		return day;
	}
	public void setDay(int day) {
		this.day = day;
	}
	public int getAccept() {
		return accept;
	}
	public void setAccept(int accept) {
		this.accept = accept;
	}
	public int getWork() {
		return work;
	}
	public void setWork(int work) {
		this.work = work;
	}
	public String getOrder_seq() {
		return order_seq;
	}
	public void setOrder_seq(String order_seq) {
		this.order_seq = order_seq;
	}
	public String getCart_seq() {
		return cart_seq;
	}
	public void setCart_seq(String cart_seq) {
		this.cart_seq = cart_seq;
	}
	public String getPurchase_seq() {
		return purchase_seq;
	}
	public void setPurchase_seq(String purchase_seq) {
		this.purchase_seq = purchase_seq;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public Double getPrice() {
		return price;
	}
	public void setPrice(Double price) {
		this.price = price;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public Date getOrdered_date() {
		return ordered_date;
	}
	public void setOrdered_date(Date ordered_date) {
		this.ordered_date = ordered_date;
	}
	@Override
	public String toString() {
		return "OrderVO [option_seq=" + option_seq + ", cart_seq=" + cart_seq + ", material_seq=" + material_seq
				+ ", company_seq=" + company_seq + ", cart_option=" + cart_option + ", accept_date=" + accept_date
				+ ", work_date=" + work_date + ", day=" + day + ", accept=" + accept + ", work=" + work + ", order_seq="
				+ order_seq + ", purchase_seq=" + purchase_seq + ", quantity=" + quantity + ", price=" + price
				+ ", type=" + type + ", ordered_date=" + ordered_date + "]";
	}

	
}
