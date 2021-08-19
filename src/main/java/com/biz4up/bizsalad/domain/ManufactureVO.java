package com.biz4up.bizsalad.domain;

public class ManufactureVO {
	private String manufacture_seq;
	private String manufacture_name;
	private String manufacture_description;
	private String manufacture_price;
	
	public String getManufacture_seq() {
		return manufacture_seq;
	}
	public void setManufacture_seq(String manufacture_seq) {
		this.manufacture_seq = manufacture_seq;
	}
	public String getManufacture_name() {
		return manufacture_name;
	}
	public void setManufacture_name(String manufacture_name) {
		this.manufacture_name = manufacture_name;
	}
	public String getManufacture_description() {
		return manufacture_description;
	}
	public void setManufacture_description(String manufacture_description) {
		this.manufacture_description = manufacture_description;
	}
	public String getManufacture_price() {
		return manufacture_price;
	}
	public void setManufacture_price(String manufacture_price) {
		this.manufacture_price = manufacture_price;
	}
	@Override
	public String toString() {
		return "ManufactureVO [manufacture_seq=" + manufacture_seq + ", manufacture_name=" + manufacture_name
				+ ", manufacture_description=" + manufacture_description + ", manufacture_price=" + manufacture_price
				+ "]";
	}
	
	
}
