package com.biz4up.bizsalad.domain;

import java.util.Date;

public class Temp_OptionVO extends CartVO{
	
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
	public String getCart_option() {
		return cart_option;
	}
	public void setCart_option(String cart_option) {
		this.cart_option = cart_option;
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
	
	@Override
	public String toString() {
		return "Temp_OptionVO [option_seq=" + option_seq + ", cart_seq=" + cart_seq + ", material_seq=" + material_seq
				+ ", company_seq=" + company_seq + ", cart_option=" + cart_option + ", accept_date=" + accept_date
				+ ", work_date=" + work_date + ", day=" + day + ", accept=" + accept + ", work=" + work + "]";
	}
	
	

}
