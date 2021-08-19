package com.biz4up.bizsalad.domain;

import java.util.Date;

public class PurchaseTableVO {
	
	private String purchase_seq;
	private String user_seq;
	private String user_address_seq;
	private String order_address_seq;
	private int purchase_total;
	public int getPurchase_total() {
		return purchase_total;
	}
	public void setPurchase_total(int purchase_total) {
		this.purchase_total = purchase_total;
	}

	private String purchase_comment;
	private String purchase_email;
	private String purchase_type;
	private String purchase_date;
	private int purchase_payType;
	private int purchase_status;
	private Date purchase_paydate;
	
	
	public String getPurchase_seq() {
		return purchase_seq;
	}
	public void setPurchase_seq(String purchase_seq) {
		this.purchase_seq = purchase_seq;
	}
	public String getUser_seq() {
		return user_seq;
	}
	public void setUser_seq(String user_seq) {
		this.user_seq = user_seq;
	}
	public String getUser_address_seq() {
		return user_address_seq;
	}
	public void setUser_address_seq(String user_address_seq) {
		this.user_address_seq = user_address_seq;
	}
	public String getOrder_address_seq() {
		return order_address_seq;
	}
	public void setOrder_address_seq(String order_address_seq) {
		this.order_address_seq = order_address_seq;
	}

	public String getPurchase_comment() {
		return purchase_comment;
	}
	public void setPurchase_comment(String purchase_comment) {
		this.purchase_comment = purchase_comment;
	}
	public String getPurchase_email() {
		return purchase_email;
	}
	public void setPurchase_email(String purchase_email) {
		this.purchase_email = purchase_email;
	}
	public String getPurchase_type() {
		return purchase_type;
	}
	public void setPurchase_type(String purchase_type) {
		this.purchase_type = purchase_type;
	}
	public String getPurchase_date() {
		return purchase_date;
	}
	public void setPurchase_date(String purchase_date) {
		this.purchase_date = purchase_date;
	}
	public int getPurchase_payType() {
		return purchase_payType;
	}
	public void setPurchase_payType(int purchase_payType) {
		this.purchase_payType = purchase_payType;
	}
	public int getPurchase_status() {
		return purchase_status;
	}
	public void setPurchase_status(int purchase_status) {
		this.purchase_status = purchase_status;
	}
	public Date getPurchase_paydate() {
		return purchase_paydate;
	}
	public void setPurchase_paydate(Date purchase_paydate) {
		this.purchase_paydate = purchase_paydate;
	}
	
	@Override
	public String toString() {
		return "PurchaseVO [purchase_seq=" + purchase_seq + ", user_seq=" + user_seq + ", user_address_seq="
				+ user_address_seq + ", order_address_seq=" + order_address_seq + ", purchase_total=" + purchase_total
				+ ", purchase_comment=" + purchase_comment + ", purchase_email=" + purchase_email + ", purchase_type="
				+ purchase_type + ", purchase_date=" + purchase_date + ", purchase_payType=" + purchase_payType
				+ ", purchase_status=" + purchase_status + ", purchase_paydate=" + purchase_paydate + "]";
	}
}
