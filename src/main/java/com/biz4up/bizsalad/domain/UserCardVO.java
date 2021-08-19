package com.biz4up.bizsalad.domain;

public class UserCardVO {
	
	private String user_card_seq;
	private String user_seq;
	private String card_name;
	private String card_nickname;
	private String card_number;
	private String card_password;
	private String card_cvc;
	
	public String getUser_card_seq() {
		return user_card_seq;
	}
	public void setUser_card_seq(String user_card_seq) {
		this.user_card_seq = user_card_seq;
	}
	public String getUser_seq() {
		return user_seq;
	}
	public void setUser_seq(String user_seq) {
		this.user_seq = user_seq;
	}
	public String getCard_name() {
		return card_name;
	}
	public void setCard_name(String card_name) {
		this.card_name = card_name;
	}
	public String getCard_nickname() {
		return card_nickname;
	}
	public void setCard_nickname(String card_nickname) {
		this.card_nickname = card_nickname;
	}
	public String getCard_number() {
		return card_number;
	}
	public void setCard_number(String card_number) {
		this.card_number = card_number;
	}
	public String getCard_password() {
		return card_password;
	}
	public void setCard_password(String card_password) {
		this.card_password = card_password;
	}
	public String getCard_cvc() {
		return card_cvc;
	}
	public void setCard_cvc(String card_cvc) {
		this.card_cvc = card_cvc;
	}
	@Override
	public String toString() {
		return "UserCardVO [user_card_seq=" + user_card_seq + ", user_seq=" + user_seq + ", card_name=" + card_name
				+ ", card_nickname=" + card_nickname + ", card_number=" + card_number + ", card_password="
				+ card_password + ", card_cvc=" + card_cvc + "]";
	}
	
}
