package com.biz4up.bizsalad.domain;

import java.sql.Date;

public class AdminUserVO {
	
	private String user_id;
	private String user_platform_type;
	private String withdrawal;
	
	private String user_email;
	private String user_name;
	private String user_tel;
	private String user_type;
	
	private String user_seq;
	private String user_age;
	private String user_year;
	private String user_gender;
	private String user_point;
	
	private Date join_date;
	private Date out_date;
	
	
	@Override
	public String toString() {
		return "AdminUserVO [user_id=" + user_id + ", user_platform_type=" + user_platform_type + ", withdrawal="
				+ withdrawal + ", user_email=" + user_email + ", user_name=" + user_name + ", user_tel=" + user_tel
				+ ", user_type=" + user_type + ", user_seq=" + user_seq + ", user_age=" + user_age + ", user_year="
				+ user_year + ", user_gender=" + user_gender + ", user_point=" + user_point + ", join_date=" + join_date
				+ ", out_date=" + out_date + "]";
	}
	
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getUser_platform_type() {
		return user_platform_type;
	}
	public void setUser_platform_type(String user_platform_type) {
		this.user_platform_type = user_platform_type;
	}
	public String getWithdrawal() {
		return withdrawal;
	}
	public void setWithdrawal(String withdrawal) {
		this.withdrawal = withdrawal;
	}
	public String getUser_email() {
		return user_email;
	}
	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getUser_tel() {
		return user_tel;
	}
	public void setUser_tel(String user_tel) {
		this.user_tel = user_tel;
	}
	public String getUser_type() {
		return user_type;
	}
	public void setUser_type(String user_type) {
		this.user_type = user_type;
	}
	public String getUser_seq() {
		return user_seq;
	}
	public void setUser_seq(String user_seq) {
		this.user_seq = user_seq;
	}
	public String getUser_age() {
		return user_age;
	}
	public void setUser_age(String user_age) {
		this.user_age = user_age;
	}
	public String getUser_year() {
		return user_year;
	}
	public void setUser_year(String user_year) {
		this.user_year = user_year;
	}
	public String getUser_gender() {
		return user_gender;
	}
	public void setUser_gender(String user_gender) {
		this.user_gender = user_gender;
	}
	public String getUser_point() {
		return user_point;
	}
	public void setUser_point(String user_point) {
		this.user_point = user_point;
	}
	public Date getJoin_date() {
		return join_date;
	}
	public void setJoin_date(Date join_date) {
		this.join_date = join_date;
	}
	public Date getOut_date() {
		return out_date;
	}
	public void setOut_date(Date out_date) {
		this.out_date = out_date;
	}

}
