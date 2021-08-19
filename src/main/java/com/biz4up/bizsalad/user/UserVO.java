package com.biz4up.bizsalad.user;

import java.util.Date;

public class UserVO {
	private String user_seq;
	private String user_id;
	private String user_pass;
	private String user_platform_type;
	private String user_access_token;
	private String user_refresh_token;
	private String user_name; // 20210706 추가 
	private String user_type; // 20210706 추가
	
	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
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

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getUser_pass() {
		return user_pass;
	}

	public void setUser_pass(String user_pass) {
		this.user_pass = user_pass;
	}

	public String getUser_platform_type() {
		return user_platform_type;
	}

	public void setUser_platform_type(String user_platform_type) {
		this.user_platform_type = user_platform_type;
	}

	public String getUser_access_token() {
		return user_access_token;
	}

	public void setUser_access_token(String user_access_token) {
		this.user_access_token = user_access_token;
	}

	public String getUser_refresh_token() {
		return user_refresh_token;
	}

	public void setUser_refresh_token(String user_refresh_token) {
		this.user_refresh_token = user_refresh_token;
	}

	@Override
	public String toString() {
		return "UserVO [user_seq=" + user_seq + ", user_id=" + user_id + ", user_pass=" + user_pass
				+ ", user_platform_type=" + user_platform_type + ", user_access_token=" + user_access_token
				+ ", user_refresh_token=" + user_refresh_token + ", user_name=" + user_name + ", user_type=" + user_type
				+ "]";
	}



}
