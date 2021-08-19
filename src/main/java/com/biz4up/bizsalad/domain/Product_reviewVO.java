package com.biz4up.bizsalad.domain;

public class Product_reviewVO {
	private String pr_bbs_seq;
	private String purchase_seq;
	private String user_seq;
	private int point;
	private String contents;
	private String file;
	private String file2;
	private String file3;
	private String file4;
	private String file5;
	private String pr_bbs_date;
	public String getPr_bbs_seq() {
		return pr_bbs_seq;
	}
	public void setPr_bbs_seq(String pr_bbs_seq) {
		this.pr_bbs_seq = pr_bbs_seq;
	}
	
	
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
	public int getPoint() {
		return point;
	}
	public void setPoint(int point) {
		this.point = point;
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
	public String getPr_bbs_date() {
		return pr_bbs_date;
	}
	public void setPr_bbs_date(String pr_bbs_date) {
		this.pr_bbs_date = pr_bbs_date;
	}
	@Override
	public String toString() {
		return "Product_reviewVO [pr_bbs_seq=" + pr_bbs_seq + ", purchase_seq=" + purchase_seq + ", user_seq="
				+ user_seq + ", point=" + point + ", contents=" + contents + ", file=" + file + ", file2=" + file2
				+ ", file3=" + file3 + ", file4=" + file4 + ", file5=" + file5 + ", pr_bbs_date=" + pr_bbs_date + "]";
	}
	
}
