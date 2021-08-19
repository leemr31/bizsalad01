package com.biz4up.bizsalad.domain;

import java.util.*;

import com.fasterxml.jackson.annotation.JsonFormat;


public class Company_orderVO {
	private String user_address_seq;
	private String order_address_seq;
	private Double purchase_total;
	private String purchase_comment;
	private String purchase_email;
	private String purchase_type;
	
	@JsonFormat(pattern="yy-MM-dd a hh:mm", timezone="Asia/Seoul")
	private Date purchase_date;
	
	private int purchase_payType;
	private int purchase_status;

	private Date purchase_payDate;
	
	private String purchase_seq;
	private String user_seq;
	private String user_name;
	private String oseq;
	private String option_seq;
	private String pseq;
	private String product_seq;
	private String product_name;
	private String manufacture_seq;
	private String manufacture_name;
	private String material_seq;
	private String material_name;
	private String material_description;
	private String material_price;
	private String company_seq;
	private String company_email;
	private String company_tel;
	private String company_name;
	private String cart_option;
	private Date accept_date;
	private Date work_date;
	private int day;
	private int accept;
	private int work;
	private String cart_seq;
	
	
	
	
	public String getCart_seq() {
		return cart_seq;
	}
	public void setCart_seq(String cart_seq) {
		this.cart_seq = cart_seq;
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
	public Double getPurchase_total() {
		return purchase_total;
	}
	public void setPurchase_total(Double purchase_total) {
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
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getOseq() {
		return oseq;
	}
	public void setOseq(String oseq) {
		this.oseq = oseq;
	}
	public String getOption_seq() {
		return option_seq;
	}
	public void setOption_seq(String option_seq) {
		this.option_seq = option_seq;
	}
	public String getPseq() {
		return pseq;
	}
	public void setPseq(String pseq) {
		this.pseq = pseq;
	}
	public String getProduct_seq() {
		return product_seq;
	}
	public void setProduct_seq(String product_seq) {
		this.product_seq = product_seq;
	}
	public String getProduct_name() {
		return product_name;
	}
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	public String getManufacture_seq() {
		return manufacture_seq;
	}
	public void setManufacture_seq(String manufacture_seq) {
		this.manufacture_seq = manufacture_seq;
	}
	public String getManufacture_name() {
		return manufacture_name;
	}
	public void setManufacture_name(String manufacture_name) {
		this.manufacture_name = manufacture_name;
	}
	public String getMaterial_seq() {
		return material_seq;
	}
	public void setMaterial_seq(String material_seq) {
		this.material_seq = material_seq;
	}
	public String getMaterial_name() {
		return material_name;
	}
	public void setMaterial_name(String material_name) {
		this.material_name = material_name;
	}
	public String getMaterial_description() {
		return material_description;
	}
	public void setMaterial_description(String material_description) {
		this.material_description = material_description;
	}
	public String getMaterial_price() {
		return material_price;
	}
	public void setMaterial_price(String material_price) {
		this.material_price = material_price;
	}
	public String getCompany_seq() {
		return company_seq;
	}
	public void setCompany_seq(String company_seq) {
		this.company_seq = company_seq;
	}
	public String getCompany_email() {
		return company_email;
	}
	public void setCompany_email(String company_email) {
		this.company_email = company_email;
	}
	public String getCompany_tel() {
		return company_tel;
	}
	public void setCompany_tel(String company_tel) {
		this.company_tel = company_tel;
	}
	public String getCompany_name() {
		return company_name;
	}
	public void setCompany_name(String company_name) {
		this.company_name = company_name;
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
		return "Company_orderVO [user_address_seq=" + user_address_seq + ", order_address_seq=" + order_address_seq
				+ ", purchase_total=" + purchase_total + ", purchase_comment=" + purchase_comment + ", purchase_email="
				+ purchase_email + ", purchase_type=" + purchase_type + ", purchase_date=" + purchase_date
				+ ", purchase_payType=" + purchase_payType + ", purchase_status=" + purchase_status
				+ ", purchase_payDate=" + purchase_payDate + ", purchase_seq=" + purchase_seq + ", user_seq=" + user_seq
				+ ", user_name=" + user_name + ", oseq=" + oseq + ", option_seq=" + option_seq + ", pseq=" + pseq
				+ ", product_seq=" + product_seq + ", product_name=" + product_name + ", manufacture_seq="
				+ manufacture_seq + ", manufacture_name=" + manufacture_name + ", material_seq=" + material_seq
				+ ", material_name=" + material_name + ", material_description=" + material_description
				+ ", material_price=" + material_price + ", company_seq=" + company_seq + ", company_email="
				+ company_email + ", company_tel=" + company_tel + ", company_name=" + company_name + ", cart_option="
				+ cart_option + ", accept_date=" + accept_date + ", work_date=" + work_date + ", day=" + day
				+ ", accept=" + accept + ", work=" + work + ", cart_seq=" + cart_seq + "]";
	}
	
}
