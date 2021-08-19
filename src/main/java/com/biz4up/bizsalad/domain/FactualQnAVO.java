package com.biz4up.bizsalad.domain;

public class FactualQnAVO {
	private String fqna_bbs_seq;
	private String company_seq;
	private String user_seq;
	private String manufacture_seq;
	private String option_seq;
	private String contents;
	private String file;
	private String file2;
	private String file3;
	private String file4;
	private String file5;
	private String cart_seq;
	
	public String getCart_seq() {
		return cart_seq;
	}
	public void setCart_seq(String cart_seq) {
		this.cart_seq = cart_seq;
	}
	public String getFqna_bbs_seq() {
		return fqna_bbs_seq;
	}
	public void setFqna_bbs_seq(String fqna_bbs_seq) {
		this.fqna_bbs_seq = fqna_bbs_seq;
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
	public String getManufacture_seq() {
		return manufacture_seq;
	}
	public void setManufacture_seq(String manufacture_seq) {
		this.manufacture_seq = manufacture_seq;
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
	@Override
	public String toString() {
		return "FactualQnAVO [fqna_bbs_seq=" + fqna_bbs_seq + ", company_seq=" + company_seq + ", user_seq=" + user_seq
				+ ", manufacture_seq=" + manufacture_seq + ", option_seq=" + option_seq + ", contents=" + contents
				+ ", file=" + file + ", file2=" + file2 + ", file3=" + file3 + ", file4=" + file4 + ", file5=" + file5
				+ ", cart_seq=" + cart_seq + "]";
	}
	
	
}
