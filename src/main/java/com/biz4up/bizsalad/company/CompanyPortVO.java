package com.biz4up.bizsalad.company;

public class CompanyPortVO {
	private String company_portfolio_seq;
	private String company_seq;
	private String company_port_img;
	private String company_url;
	private String company_file;
	private String company_auth_img;
	
	
	public String getCompany_portfolio_seq() {
		return company_portfolio_seq;
	}
	public void setCompany_portfolio_seq(String company_portfolio_seq) {
		this.company_portfolio_seq = company_portfolio_seq;
	}
	public String getCompany_seq() {
		return company_seq;
	}
	public void setCompany_seq(String company_seq) {
		this.company_seq = company_seq;
	}
	public String getCompany_port_img() {
		return company_port_img;
	}
	public void setCompany_port_img(String company_port_img) {
		this.company_port_img = company_port_img;
	}
	public String getCompany_url() {
		return company_url;
	}
	public void setCompany_url(String company_url) {
		this.company_url = company_url;
	}
	public String getCompany_file() {
		return company_file;
	}
	public void setCompany_file(String company_file) {
		this.company_file = company_file;
	}
	public String getCompany_auth_img() {
		return company_auth_img;
	}
	public void setCompany_auth_img(String company_auth_img) {
		this.company_auth_img = company_auth_img;
	}
	@Override
	public String toString() {
		return "CompanyPortVO [company_portfolio_seq=" + company_portfolio_seq + ", company_seq=" + company_seq
				+ ", company_port_img=" + company_port_img + ", company_url=" + company_url + ", company_file="
				+ company_file + ", company_auth_img=" + company_auth_img + "]";
	}
}
