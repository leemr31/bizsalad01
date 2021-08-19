package com.biz4up.bizsalad.user;

import java.util.Date;

public class UserInfoVO {
	@Override
	public String toString() {
		return "UserInfoVO [user_seq=" + user_seq + ", user_name=" + user_name + ", user_point=" + user_point
				+ ", user_email=" + user_email + ", user_tel=" + user_tel + ", user_type=" + user_type + ", user_year="
				+ user_year + ", user_age=" + user_age + ", user_gender=" + user_gender + ", join_date=" + join_date
				+ "]";
	}
	private String user_seq;
	private String user_name;
	private String user_point;
	private String user_email;
	private String user_tel;
	private int user_type;
	private String user_year;
	private int user_age;
	private String user_gender;
	private Date join_date;
	
	
	
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getUser_seq() {
		return user_seq;
	}
	public void setUser_seq(String user_seq) {
		this.user_seq = user_seq;
	}
	public String getUser_point() {
		return user_point;
	}
	public void setUser_point(String user_point) {
		this.user_point = user_point;
	}
	public String getUser_email() {
		return user_email;
	}
	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}
	public String getUser_tel() {
		return user_tel;
	}
	public void setUser_tel(String user_tel) {
		this.user_tel = user_tel;
	}
	public int getUser_type() {
		return user_type;
	}
	public void setUser_type(int user_type) {
		this.user_type = user_type;
	}
	public String getUser_year() {
		return user_year;
	}
	public void setUser_year(String user_year) {
		this.user_year = user_year;
	}
	public int getUser_age() {
		return user_age;
	}
	public void setUser_age(int user_age) {
		this.user_age = user_age;
	}
	public String getUser_gender() {
		return user_gender;
	}
	public void setUser_gender(String user_gender) {
		this.user_gender = user_gender;
	}
	public Date getJoin_date() {
		return join_date;
	}
	public void setJoin_date(Date join_date) {
		this.join_date = join_date;
	}
	
	
}
