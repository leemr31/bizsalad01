package com.biz4up.bizsalad.domain;

import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

public class AdminSettleVO {
	private String user_email;
	private String address_name;
	private String oseq;
	private String order_seq;
	private String cart_seq;
	private String purchase_seq;
	private int quantity;
	private double price;	//order table의 개당가격
	private String type; 	//ordered table의 type
	@JsonFormat(pattern="yyyy-MM-dd a hh:mm:ss", timezone="Asia/Seoul")
	private Date order_date;
	private String pseq;
	private String user_seq;
	private String user_address_seq;
	private String order_address_seq;
	private double purchase_total;
	private String purchase_comment;
	private String purchase_email;
	@JsonFormat(pattern="yyyy-MM-dd a hh:mm:ss", timezone="Asia/Seoul")
	private Date purchase_date;
	private int purchase_payType;
	private int purchase_status;
	@JsonFormat(pattern="yyyy-MM-dd a hh:mm:ss", timezone="Asia/Seoul")
	private Date purchase_payDate;
	private String sample_comment;
	private String re_sample_img_url;
	private String cart01;
	private String cart02;
	private String cart03;
	private String cart04;
	private String cart05;
	private String cart06;
	private String cart07;
	private String cart08;
	private String cart09;
	private String cart10;
	private int all_work;
	@JsonFormat(pattern="yyyy-MM-dd a hh:mm:ss", timezone="Asia/Seoul")
	private Date save_date;
	private int quick;
	public String getUser_email() {
		return user_email;
	}
	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}
	public String getAddress_name() {
		return address_name;
	}
	public void setAddress_name(String address_name) {
		this.address_name = address_name;
	}
	public String getOseq() {
		return oseq;
	}
	public void setOseq(String oseq) {
		this.oseq = oseq;
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
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public Date getOrder_date() {
		return order_date;
	}
	public void setOrder_date(Date order_date) {
		this.order_date = order_date;
	}
	public String getPseq() {
		return pseq;
	}
	public void setPseq(String pseq) {
		this.pseq = pseq;
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
	public double getpurchase_total() {
		return purchase_total;
	}
	public void setpurchase_total(double purchase_total) {
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
	public String getCart01() {
		return cart01;
	}
	public void setCart01(String cart01) {
		this.cart01 = cart01;
	}
	public String getCart02() {
		return cart02;
	}
	public void setCart02(String cart02) {
		this.cart02 = cart02;
	}
	public String getCart03() {
		return cart03;
	}
	public void setCart03(String cart03) {
		this.cart03 = cart03;
	}
	public String getCart04() {
		return cart04;
	}
	public void setCart04(String cart04) {
		this.cart04 = cart04;
	}
	public String getCart05() {
		return cart05;
	}
	public void setCart05(String cart05) {
		this.cart05 = cart05;
	}
	public String getCart06() {
		return cart06;
	}
	public void setCart06(String cart06) {
		this.cart06 = cart06;
	}
	public String getCart07() {
		return cart07;
	}
	public void setCart07(String cart07) {
		this.cart07 = cart07;
	}
	public String getCart08() {
		return cart08;
	}
	public void setCart08(String cart08) {
		this.cart08 = cart08;
	}
	public String getCart09() {
		return cart09;
	}
	public void setCart09(String cart09) {
		this.cart09 = cart09;
	}
	public String getCart10() {
		return cart10;
	}
	public void setCart10(String cart10) {
		this.cart10 = cart10;
	}
	public int getAll_work() {
		return all_work;
	}
	public void setAll_work(int all_work) {
		this.all_work = all_work;
	}
	public Date getSave_date() {
		return save_date;
	}
	public void setSave_date(Date save_date) {
		this.save_date = save_date;
	}
	public int getQuick() {
		return quick;
	}
	public void setQuick(int quick) {
		this.quick = quick;
	}
	@Override
	public String toString() {
		return "KongjeongVO [user_email=" + user_email + ", address_name=" + address_name + ", oseq=" + oseq
				+ ", order_seq=" + order_seq + ", cart_seq=" + cart_seq + ", purchase_seq=" + purchase_seq
				+ ", quantity=" + quantity + ", price=" + price + ", type=" + type + ", order_date=" + order_date
				+ ", pseq=" + pseq + ", user_seq=" + user_seq + ", user_address_seq=" + user_address_seq
				+ ", order_address_seq=" + order_address_seq + ", purchase_total=" + purchase_total
				+ ", purchase_comment=" + purchase_comment + ", purchase_email=" + purchase_email + ", purchase_date="
				+ purchase_date + ", purchase_payType=" + purchase_payType + ", purchase_status=" + purchase_status
				+ ", purchase_payDate=" + purchase_payDate + ", sample_comment=" + sample_comment
				+ ", re_sample_img_url=" + re_sample_img_url + ", cart01=" + cart01 + ", cart02=" + cart02 + ", cart03="
				+ cart03 + ", cart04=" + cart04 + ", cart05=" + cart05 + ", cart06=" + cart06 + ", cart07=" + cart07
				+ ", cart08=" + cart08 + ", cart09=" + cart09 + ", cart10=" + cart10 + ", all_work=" + all_work
				+ ", save_date=" + save_date + ", quick=" + quick + "]";
	}
	
	
	
}
