package com.biz4up.bizsalad.domain;

import java.util.Date;

public class OrderTableVO {
	private String order_seq;
	private String cart_seq;
	private String purchase_seq;
	private int quantity;	
	private int price;
	private String type;
	private Date ordered_date;
	
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
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public String getPurchase_seq() {
		return purchase_seq;
	}
	public void setPurchase_seq(String purchase_seq) {
		this.purchase_seq = purchase_seq;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
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
		return "OrderVO [order_seq=" + order_seq + ", cart_seq=" + cart_seq + ", quantity=" + quantity
				+ ", purchase_seq=" + purchase_seq + ", price=" + price + ", type=" + type + ", ordered_date="
				+ ordered_date + "]";
	}
	

	
}
