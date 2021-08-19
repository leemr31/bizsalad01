package com.biz4up.bizsalad.user;

public class AcntVO {

	public String account_seq;
	public String user_seq;
	public String company_seq;
	public String account_bank_name;
	public String account_bank_number;
	public String account_name;

	@Override
	public String toString() {
		return "AcntVO [account_seq=" + account_seq + ", user_seq=" + user_seq + ", company_seq=" + company_seq
				+ ", account_bank_name=" + account_bank_name + ", account_bank_number=" + account_bank_number
				+ ", account_name=" + account_name + "]";
	}

	public String getAccount_seq() {
		return account_seq;
	}

	public void setAccount_seq(String account_seq) {
		this.account_seq = account_seq;
	}

	public String getUser_seq() {
		return user_seq;
	}

	public void setUser_seq(String user_seq) {
		this.user_seq = user_seq;
	}

	public String getCompany_seq() {
		return company_seq;
	}

	public void setCompany_seq(String company_seq) {
		this.company_seq = company_seq;
	}

	public String getAccount_bank_name() {
		return account_bank_name;
	}

	public void setAccount_bank_name(String account_bank_name) {
		this.account_bank_name = account_bank_name;
	}

	public String getAccount_bank_number() {
		return account_bank_number;
	}

	public void setAccount_bank_number(String account_bank_number) {
		this.account_bank_number = account_bank_number;
	}

	public String getAccount_name() {
		return account_name;
	}

	public void setAccount_name(String account_name) {
		this.account_name = account_name;
	}

}
