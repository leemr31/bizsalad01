package com.biz4up.bizsalad.domain;

import java.util.Date;

public class PurchaseVO {
	private String purchase_seq;
	private String user_seq;
	private String user_address_seq;
	private String order_address_seq;
	private double purchase_total;
	private String purchase_comment;
	private String purchase_email;
	private String purchase_type;
	private Date purchase_date;
	private int purchase_payType;
	private int purchase_status;
	private Date purchase_payDate;
	private String pseq;	// 화면에 표시할 결제번호
	private String oseq;	// 화면에 표시할 주문번호
	private String sample_comment;
	private String re_sample_img_url;
	private String user_id;
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
	public double getPurchase_total() {
		return purchase_total;
	}
	public void setPurchase_total(double purchase_total) {
		this.purchase_total = purchase_total;
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
	public Date getPurchase_date() {
		return purchase_date;
	}
	public void setPurchase_date(Date purchase_date) {
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
	public Date getPurchase_payDate() {
		return purchase_payDate;
	}
	public void setPurchase_payDate(Date purchase_payDate) {
		this.purchase_payDate = purchase_payDate;
	}
	public String getPseq() {
		return pseq;
	}
	public void setPseq(String pseq) {
		this.pseq = pseq;
	}
	public String getOseq() {
		return oseq;
	}
	public void setOseq(String oseq) {
		this.oseq = oseq;
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
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	@Override
	public String toString() {
		return "PurchaseVO [purchase_seq=" + purchase_seq + ", user_seq=" + user_seq + ", user_address_seq="
				+ user_address_seq + ", order_address_seq=" + order_address_seq + ", purchase_total=" + purchase_total
				+ ", purchase_comment=" + purchase_comment + ", purchase_email=" + purchase_email + ", purchase_type="
				+ purchase_type + ", purchase_date=" + purchase_date + ", purchase_payType=" + purchase_payType
				+ ", purchase_status=" + purchase_status + ", purchase_payDate=" + purchase_payDate + ", pseq=" + pseq
				+ ", oseq=" + oseq + ", sample_comment=" + sample_comment + ", re_sample_img_url=" + re_sample_img_url
				+ ", user_id=" + user_id + "]";
	}
	
	
}
