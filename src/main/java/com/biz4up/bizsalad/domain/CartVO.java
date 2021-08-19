package com.biz4up.bizsalad.domain;

import java.util.Date;

public class CartVO {

	private String cart_seq;
	private String user_seq;
	private String product_seq;
	private String cart_name;
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
	private Date save_date;
	private int quick;
	private String cart_desc;
	
	public String getCart_seq() {
		return cart_seq;
	}
	public void setCart_seq(String cart_seq) {
		this.cart_seq = cart_seq;
	}
	public String getUser_seq() {
		return user_seq;
	}
	public void setUser_seq(String user_seq) {
		this.user_seq = user_seq;
	}
	public String getProduct_seq() {
		return product_seq;
	}
	public void setProduct_seq(String product_seq) {
		this.product_seq = product_seq;
	}
	public String getCart_name() {
		return cart_name;
	}
	public void setCart_name(String cart_name) {
		this.cart_name = cart_name;
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
	public String getCart_desc() {
		return cart_desc;
	}
	public void setCart_desc(String cart_desc) {
		this.cart_desc = cart_desc;
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
	
	@Override
	public String toString() {
		return "CartVO [cart_seq=" + cart_seq + ", user_seq=" + user_seq + ", product_seq=" + product_seq
				+ ", cart_name=" + cart_name + ", cart01=" + cart01 + ", cart02=" + cart02 + ", cart03=" + cart03
				+ ", cart04=" + cart04 + ", cart05=" + cart05 + ", cart06=" + cart06 + ", cart07=" + cart07
				+ ", cart08=" + cart08 + ", cart09=" + cart09 + ", cart10=" + cart10 + ", all_work=" + all_work
				+ ", save_date=" + save_date + ", quick=" + quick + ", cart_desc=" + cart_desc + "]";
	}
	
}
