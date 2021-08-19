package com.biz4up.bizsalad.comaddress;



public class ComAddressVO {	
	private String com_address_seq;
	private String company_seq;
	private String address_name;
	private String address1;
	private String address2;
	private String post_code;
	private String tel;
	private int usable;
	private int saved;
	
	public String getCom_address_seq() {
		return com_address_seq;
	}
	public void setCom_address_seq(String com_address_seq) {
		this.com_address_seq = com_address_seq;
	}
	public String getCompany_seq() {
		return company_seq;
	}
	public void setCompany_seq(String company_seq) {
		this.company_seq = company_seq;
	}
	public String getAddress_name() {
		return address_name;
	}
	public void setAddress_name(String address_name) {
		this.address_name = address_name;
	}
	public String getAddress1() {
		return address1;
	}
	public void setAddress1(String address1) {
		this.address1 = address1;
	}
	public String getAddress2() {
		return address2;
	}
	public void setAddress2(String address2) {
		this.address2 = address2;
	}
	public String getPost_code() {
		return post_code;
	}
	public void setPost_code(String post_code) {
		this.post_code = post_code;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public int getUsable() {
		return usable;
	}
	public void setUsable(int usable) {
		this.usable = usable;
	}
	public int getSaved() {
		return saved;
	}
	public void setSaved(int saved) {
		this.saved = saved;
	}
	@Override
	public String toString() {
		return "TempUserAddressVO [com_address_seq=" + com_address_seq + ", company_seq=" + company_seq
				+ ", address_name=" + address_name + ", address1=" + address1 + ", address2=" + address2
				+ ", post_code=" + post_code + ", tel=" + tel + ", usable=" + usable + ", saved=" + saved + "]";
	}
	

	
	
}
