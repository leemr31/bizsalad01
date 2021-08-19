package com.biz4up.bizsalad.domain;

public class NoticeVO {
	public String notice_bbs_seq;
	public String user_seq;
	public String title;
	public String contents;
	public String file;
	public String file2;
	public String file3;
	public String file4;
	public String file5;
	public String notice_bbs_date;
	
	public String getNotice_bbs_seq() {
		return notice_bbs_seq;
	}
	public void setNotice_bbs_seq(String notice_bbs_seq) {
		this.notice_bbs_seq = notice_bbs_seq;
	}
	public String getUser_seq() {
		return user_seq;
	}
	public void setUser_seq(String user_seq) {
		this.user_seq = user_seq;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public String getFile() {
		return file;
	}
	public void setFile(String file) {
		this.file = file;
	}
	public String getFile2() {
		return file2;
	}
	public void setFile2(String file2) {
		this.file2 = file2;
	}
	public String getFile3() {
		return file3;
	}
	public void setFile3(String file3) {
		this.file3 = file3;
	}
	public String getFile4() {
		return file4;
	}
	public void setFile4(String file4) {
		this.file4 = file4;
	}
	public String getFile5() {
		return file5;
	}
	public void setFile5(String file5) {
		this.file5 = file5;
	}
	public String getNotice_bbs_date() {
		return notice_bbs_date;
	}
	public void setNotice_bbs_date(String notice_bbs_date) {
		this.notice_bbs_date = notice_bbs_date;
	}
	
	@Override
	public String toString() {
		return "NoticeVO [notice_bbs_seq=" + notice_bbs_seq + ", user_seq=" + user_seq + ", title=" + title
				+ ", contents=" + contents + ", file=" + file + ", file2=" + file2 + ", file3=" + file3 + ", file4="
				+ file4 + ", file5=" + file5 + ", notice_bbs_date=" + notice_bbs_date + "]";
	}

	
}
