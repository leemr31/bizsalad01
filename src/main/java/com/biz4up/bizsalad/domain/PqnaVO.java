package com.biz4up.bizsalad.domain;

public class PqnaVO {
	public String pqna_bbs_seq;
	public String user_seq;
	public String type;
	public String contents;
	public String file;
	public String file2;
	public String file3;
	public String file4;
	public String file5;
	public String fr_bbs_date;
	
	
	
	@Override
	public String toString() {
		return "PqnaVO [pqna_bbs_seq=" + pqna_bbs_seq + ", user_seq=" + user_seq + ", type=" + type + ", contents="
				+ contents + ", file=" + file + ", file2=" + file2 + ", file3=" + file3 + ", file4=" + file4
				+ ", file5=" + file5 + ", fr_bbs_date=" + fr_bbs_date + "]";
	}
	
	public String getFr_bbs_date() {
		return fr_bbs_date;
	}
	public void setFr_bbs_date(String fr_bbs_date) {
		this.fr_bbs_date = fr_bbs_date;
	}
	public String getPqna_bbs_seq() {
		return pqna_bbs_seq;
	}
	public void setPqna_bbs_seq(String pqna_bbs_seq) {
		this.pqna_bbs_seq = pqna_bbs_seq;
	}
	public String getUser_seq() {
		return user_seq;
	}
	public void setUser_seq(String user_seq) {
		this.user_seq = user_seq;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
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
	
	
	
}
