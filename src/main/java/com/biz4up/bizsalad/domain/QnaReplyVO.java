package com.biz4up.bizsalad.domain;

public class QnaReplyVO {
	public String qna_reply_bbs_seq;
	public String contents;
	public String qna_bbs_seq;
	public String qna_reply_date;
	
	public String getQna_reply_bbs_seq() {
		return qna_reply_bbs_seq;
	}
	public void setQna_reply_bbs_seq(String qna_reply_bbs_seq) {
		this.qna_reply_bbs_seq = qna_reply_bbs_seq;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public String getQna_bbs_seq() {
		return qna_bbs_seq;
	}
	public void setQna_bbs_seq(String qna_bbs_seq) {
		this.qna_bbs_seq = qna_bbs_seq;
	}
	public String getQna_reply_date() {
		return qna_reply_date;
	}
	public void setQna_reply_date(String qna_reply_date) {
		this.qna_reply_date = qna_reply_date;
	}
	
	@Override
	public String toString() {
		return "QnaReplyVO [qna_reply_bbs_seq=" + qna_reply_bbs_seq + ", contents=" + contents + ", qna_bbs_seq="
				+ qna_bbs_seq + ", qna_reply_date=" + qna_reply_date + "]";
	}

	
	
}
