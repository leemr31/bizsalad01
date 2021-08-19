package com.biz4up.bizsalad.domain;

import java.util.Date;

public class FacReviewVO {
	private String fr_bbs_seq;
	private String company_seq;
	private String user_seq;
	private String option_seq;
	private int point;
	private String contents;
	private String file;
	private String file2;
	private String file3;
	private String file4;
	private String file5;
	private Date fr_bbs_date;
	public String getFr_bbs_seq() {
		return fr_bbs_seq;
	}
	public void setFr_bbs_seq(String fr_bbs_seq) {
		this.fr_bbs_seq = fr_bbs_seq;
	}
	public String getCompany_seq() {
		return company_seq;
	}
	public void setCompany_seq(String company_seq) {
		this.company_seq = company_seq;
	}
	public String getUser_seq() {
		return user_seq;
	}
	public void setUser_seq(String user_seq) {
		this.user_seq = user_seq;
	}
	public String getOption_seq() {
		return option_seq;
	}
	public void setOption_seq(String option_seq) {
		this.option_seq = option_seq;
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
	public Date getFr_bbs_date() {
		return fr_bbs_date;
	}
	public void setFr_bbs_date(Date fr_bbs_date) {
		this.fr_bbs_date = fr_bbs_date;
	}
	@Override
	public String toString() {
		return "FacReviewVO [fr_bbs_seq=" + fr_bbs_seq + ", company_seq=" + company_seq + ", user_seq=" + user_seq
				+ ", option_seq=" + option_seq + ", point=" + point + ", contents=" + contents + ", file=" + file
				+ ", file2=" + file2 + ", file3=" + file3 + ", file4=" + file4 + ", file5=" + file5 + ", fr_bbs_date="
				+ fr_bbs_date + "]";
	}
	
	
	
}
