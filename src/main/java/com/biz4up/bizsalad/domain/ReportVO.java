package com.biz4up.bizsalad.domain;

public class ReportVO {
	public String rp_bbs_seq;
	public String company_seq;
	public String option_seq;
	public String contents;
	public int type;
	public String file;
	public String file2;
	public String file3;
	public String file4;
	public String file5;
	public String date;
	public String title;
	
	
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getRp_bbs_seq() {
		return rp_bbs_seq;
	}
	public void setRp_bbs_seq(String rp_bbs_seq) {
		this.rp_bbs_seq = rp_bbs_seq;
	}
	public String getCompany_seq() {
		return company_seq;
	}
	public void setCompany_seq(String company_seq) {
		this.company_seq = company_seq;
	}
	public String getOption_seq() {
		return option_seq;
	}
	public void setOption_seq(String option_seq) {
		this.option_seq = option_seq;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
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
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	
	@Override
	public String toString() {
		return "ReportVO [rp_bbs_seq=" + rp_bbs_seq + ", company_seq=" + company_seq + ", option_seq=" + option_seq
				+ ", contents=" + contents + ", type=" + type + ", file=" + file + ", file2=" + file2 + ", file3="
				+ file3 + ", file4=" + file4 + ", file5=" + file5 + ", date=" + date + ", title=" + title + "]";
	}
	
	
}
