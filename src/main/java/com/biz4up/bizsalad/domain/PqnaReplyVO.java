package com.biz4up.bizsalad.domain;

public class PqnaReplyVO {
	public String pqna_reply_bbs_seq;
	public String contents;
	public String pqna_bbs_seq;
	public String pqna_reply_date;
	
	@Override
	public String toString() {
		return "PqnaReplyVO [pqna_reply_bbs_seq=" + pqna_reply_bbs_seq + ", contents=" + contents + ", pqna_bbs_seq="
				+ pqna_bbs_seq + ", pqna_reply_date=" + pqna_reply_date + "]";
	}
	
	public String getPqna_reply_bbs_seq() {
		return pqna_reply_bbs_seq;
	}
	public void setPqna_reply_bbs_seq(String pqna_reply_bbs_seq) {
		this.pqna_reply_bbs_seq = pqna_reply_bbs_seq;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public String getPqna_bbs_seq() {
		return pqna_bbs_seq;
	}
	public void setPqna_bbs_seq(String pqna_bbs_seq) {
		this.pqna_bbs_seq = pqna_bbs_seq;
	}
	public String getPqna_reply_date() {
		return pqna_reply_date;
	}
	public void setPqna_reply_date(String pqna_reply_date) {
		this.pqna_reply_date = pqna_reply_date;
	}
}
