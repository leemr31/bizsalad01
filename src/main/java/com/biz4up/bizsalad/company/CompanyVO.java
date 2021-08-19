package com.biz4up.bizsalad.company;

public class CompanyVO {
	private String company_seq;
	private String company_id;
	private String company_pass;
	private String company_platform_type;
	private String company_access_token;
	private String company_refresh_token;
	
	private String company_name; // 20210706 추가 
	private String company_type; // 20210706 추가 
	private String manufact_01; // 20210706 추가 
	private String manufact_02; // 20210706 추가 
	private String manufact_03; // 20210706 추가 
	private String manufact_04; // 20210706 추가 
	private String manufact_05; // 20210706 추가 
	
	public String getCompany_name() {
		return company_name;
	}
	public void setCompany_name(String company_name) {
		this.company_name = company_name;
	}
	public String getManufact_01() {
		return manufact_01;
	}
	public void setManufact_01(String manufact_01) {
		this.manufact_01 = manufact_01;
	}
	public String getManufact_02() {
		return manufact_02;
	}
	public void setManufact_02(String manufact_02) {
		this.manufact_02 = manufact_02;
	}
	public String getManufact_03() {
		return manufact_03;
	}
	public void setManufact_03(String manufact_03) {
		this.manufact_03 = manufact_03;
	}
	public String getManufact_04() {
		return manufact_04;
	}
	public void setManufact_04(String manufact_04) {
		this.manufact_04 = manufact_04;
	}
	public String getManufact_05() {
		return manufact_05;
	}
	public void setManufact_05(String manufact_05) {
		this.manufact_05 = manufact_05;
	}
	public String getCompany_type() {
		return company_type;
	}
	public void setCompany_type(String company_type) {
		this.company_type = company_type;
	}

	public String getCompany_seq() {
		return company_seq;
	}
	public void setCompany_seq(String company_seq) {
		this.company_seq = company_seq;
	}
	public String getCompany_id() {
		return company_id;
	}
	public void setCompany_id(String company_id) {
		this.company_id = company_id;
	}
	public String getCompany_pass() {
		return company_pass;
	}
	public void setCompany_pass(String company_pass) {
		this.company_pass = company_pass;
	}
	public String getCompany_platform_type() {
		return company_platform_type;
	}
	public void setCompany_platform_type(String company_platform_type) {
		this.company_platform_type = company_platform_type;
	}
	public String getCompany_access_token() {
		return company_access_token;
	}
	public void setCompany_access_token(String company_access_token) {
		this.company_access_token = company_access_token;
	}
	public String getCompany_refresh_token() {
		return company_refresh_token;
	}
	public void setCompany_refresh_token(String company_refresh_token) {
		this.company_refresh_token = company_refresh_token;
	}
	
	@Override
	public String toString() {
		return "CompanyVO [company_seq=" + company_seq + ", company_id=" + company_id + ", company_pass=" + company_pass
				+ ", company_platform_type=" + company_platform_type + ", company_access_token=" + company_access_token
				+ ", company_refresh_token=" + company_refresh_token + ", company_name=" + company_name
				+ ", company_type=" + company_type + ", manufact_01=" + manufact_01 + ", manufact_02=" + manufact_02
				+ ", manufact_03=" + manufact_03 + ", manufact_04=" + manufact_04 + ", manufact_05=" + manufact_05
				+ "]";
	}

	
	
}
