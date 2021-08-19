package com.biz4up.bizsalad.domain;

import java.util.Date;

public class FactualReplyVO {
	private String fr_reply_bbs_seq;
	private String contents;
	private String fr_bbs_seq;
	private Date fr_reply_date;
	public String getFr_reply_bbs_seq() {
		return fr_reply_bbs_seq;
	}
	public void setFr_reply_bbs_seq(String fr_reply_bbs_seq) {
		this.fr_reply_bbs_seq = fr_reply_bbs_seq;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public String getFr_bbs_seq() {
		return fr_bbs_seq;
	}
	public void setFr_bbs_seq(String fr_bbs_seq) {
		this.fr_bbs_seq = fr_bbs_seq;
	}
	public Date getFr_reply_date() {
		return fr_reply_date;
	}
	public void setFr_reply_date(Date fr_reply_date) {
		this.fr_reply_date = fr_reply_date;
	}
	@Override
	public String toString() {
		return "FactualReplyVO [fr_reply_bbs_seq=" + fr_reply_bbs_seq + ", contents=" + contents + ", fr_bbs_seq="
				+ fr_bbs_seq + ", fr_reply_date=" + fr_reply_date + "]";
	}
	
	
}
