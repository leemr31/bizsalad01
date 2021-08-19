package com.biz4up.bizsalad.domain;

public class Company_infoVO {
	private String company_email;
	private String company_name;
	private String company_tel;
	private String company_seq;
	private String manufact_01;
	
	public String getCompany_email() {
		return company_email;
	}
	public void setCompany_email(String company_email) {
		this.company_email = company_email;
	}
	public String getCompany_name() {
		return company_name;
	}
	public void setCompany_name(String company_name) {
		this.company_name = company_name;
	}
	public String getCompany_tel() {
		return company_tel;
	}
	public void setCompany_tel(String company_tel) {
		this.company_tel = company_tel;
	}
	public String getCompany_seq() {
		return company_seq;
	}
	public void setCompany_seq(String company_seq) {
		this.company_seq = company_seq;
	}
	public String getManufact_01() {
		return manufact_01;
	}
	public void setManufact_01(String manufact_01) {
		this.manufact_01 = manufact_01;
	}
	@Override
	public String toString() {
		return "Company_infoVO [company_email=" + company_email + ", company_name=" + company_name + ", company_tel="
				+ company_tel + ", company_seq=" + company_seq + ", manufact_01=" + manufact_01 + "]";
	}
	
}
