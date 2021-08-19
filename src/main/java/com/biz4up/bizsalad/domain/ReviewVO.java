package com.biz4up.bizsalad.domain;

public class ReviewVO {
	private String purchase_seq;
	private String user_seq;
	private String contents;
	private int point;
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
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public int getPoint() {
		return point;
	}
	public void setPoint(int point) {
		this.point = point;
	}
	@Override
	public String toString() {
		return "ReviewVO [purchase_seq=" + purchase_seq + ", user_seq=" + user_seq + ", contents=" + contents
				+ ", point=" + point + "]";
	}
	
	
	
}
