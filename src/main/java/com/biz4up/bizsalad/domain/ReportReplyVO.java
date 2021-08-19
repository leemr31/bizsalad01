package com.biz4up.bizsalad.domain;

public class ReportReplyVO {
	public String rp_reply_seq;
	public String contents;
	public String rp_bbs_seq;
	public String rp_reply_date;
	
	public String getRp_reply_seq() {
		return rp_reply_seq;
	}


	public void setRp_reply_seq(String rp_reply_seq) {
		this.rp_reply_seq = rp_reply_seq;
	}


	public String getContents() {
		return contents;
	}


	public void setContents(String contents) {
		this.contents = contents;
	}


	public String getRp_bbs_seq() {
		return rp_bbs_seq;
	}


	public void setRp_bbs_seq(String rp_bbs_seq) {
		this.rp_bbs_seq = rp_bbs_seq;
	}


	public String getRp_reply_date() {
		return rp_reply_date;
	}


	public void setRp_reply_date(String rp_reply_date) {
		this.rp_reply_date = rp_reply_date;
	}


	@Override
	public String toString() {
		return "ReportReplyVO [rp_reply_seq=" + rp_reply_seq + ", contents=" + contents + ", rp_bbs_seq=" + rp_bbs_seq
				+ ", rp_reply_date=" + rp_reply_date + "]";
	}
	
	
}
