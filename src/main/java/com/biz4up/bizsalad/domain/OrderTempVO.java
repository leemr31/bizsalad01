package com.biz4up.bizsalad.domain;


public class OrderTempVO {
	private String purchase_seq;
	private String user_name;
	private String purchase_date;
	private String type;
	private String sample_comment;
	private String re_sample_img_url;
	private String purchase_type;
	private String order_seq;
	
	public String getPurchase_seq() {
		return purchase_seq;
	}
	public void setPurchase_seq(String purchase_seq) {
		this.purchase_seq = purchase_seq;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getPurchase_date() {
		return purchase_date;
	}
	public void setPurchase_date(String purchase_date) {
		this.purchase_date = purchase_date;
	}
	
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	
	public String getSample_comment() {
		return sample_comment;
	}
	public void setSample_comment(String sample_comment) {
		this.sample_comment = sample_comment;
	}
	public String getRe_sample_img_url() {
		return re_sample_img_url;
	}
	public void setRe_sample_img_url(String re_sample_img_url) {
		this.re_sample_img_url = re_sample_img_url;
	}
	
	public String getPurchase_type() {
		return purchase_type;
	}
	public void setPurchase_type(String purchase_type) {
		this.purchase_type = purchase_type;
	}
	public String getOrder_seq() {
		return order_seq;
	}
	public void setOrder_seq(String order_seq) {
		this.order_seq = order_seq;
	}
	@Override
	public String toString() {
		return "OrderTempVO [purchase_seq=" + purchase_seq + ", user_name=" + user_name + ", purchase_date="
				+ purchase_date + ", type=" + type + ", sample_comment=" + sample_comment + ", re_sample_img_url="
				+ re_sample_img_url + ", purchase_type=" + purchase_type + ", order_seq=" + order_seq + "]";
	}
	
}