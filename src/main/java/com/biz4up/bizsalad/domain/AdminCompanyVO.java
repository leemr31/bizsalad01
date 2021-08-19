package com.biz4up.bizsalad.domain;

import java.sql.Date;

public class AdminCompanyVO {
	
	private String company_id;
	private String company_platform_type;
	private String withdrawal;
	
	private String company_email;
	private String company_name;
	private String company_tel;
	private String company_type;
	
	private String company_seq;
	private String manufact_01;
	private String manufact_02;
	private String manufact_03;
	private String manufact_04;
	private String manufact_05;
	
	private Date join_date;
	private Date out_date;
	
	public String getCompany_id() {
		return company_id;
	}
	public void setCompany_id(String company_id) {
		this.company_id = company_id;
	}
	public String getCompany_platform_type() {
		return company_platform_type;
	}
	public void setCompany_platform_type(String company_platform_type) {
		this.company_platform_type = company_platform_type;
	}
	public String getWithdrawal() {
		return withdrawal;
	}
	public void setWithdrawal(String withdrawal) {
		this.withdrawal = withdrawal;
	}
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
	public Date getJoin_date() {
		return join_date;
	}
	public void setJoin_date(Date join_date) {
		this.join_date = join_date;
	}
	public Date getOut_date() {
		return out_date;
	}
	public void setOut_date(Date out_date) {
		this.out_date = out_date;
	}
	@Override
	public String toString() {
		return "CompanyAdminVO [company_id=" + company_id + ", company_platform_type=" + company_platform_type
				+ ", withdrawal=" + withdrawal + ", company_email=" + company_email + ", company_name=" + company_name
				+ ", company_tel=" + company_tel + ", company_type=" + company_type + ", company_seq=" + company_seq
				+ ", manufact_01=" + manufact_01 + ", manufact_02=" + manufact_02 + ", manufact_03=" + manufact_03
				+ ", manufact_04=" + manufact_04 + ", manufact_05=" + manufact_05 + ", join_date=" + join_date
				+ ", out_date=" + out_date + "]";
	}
	

	
}
