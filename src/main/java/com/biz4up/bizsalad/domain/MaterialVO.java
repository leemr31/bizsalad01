package com.biz4up.bizsalad.domain;

public class MaterialVO {
	private String material_seq;
	private String manufacture_seq;
	private String material_name;
	private String material_description;
	private String material_price;
	public String getMaterial_seq() {
		return material_seq;
	}
	public void setMaterial_seq(String material_seq) {
		this.material_seq = material_seq;
	}
	public String getManufacture_seq() {
		return manufacture_seq;
	}
	public void setManufacture_seq(String manufacture_seq) {
		this.manufacture_seq = manufacture_seq;
	}
	public String getMaterial_name() {
		return material_name;
	}
	public void setMaterial_name(String material_name) {
		this.material_name = material_name;
	}
	public String getMaterial_description() {
		return material_description;
	}
	public void setMaterial_description(String material_description) {
		this.material_description = material_description;
	}
	public String getMaterial_price() {
		return material_price;
	}
	public void setMaterial_price(String material_price) {
		this.material_price = material_price;
	}
	@Override
	public String toString() {
		return "MaterialVO [material_seq=" + material_seq + ", manufacture_seq=" + manufacture_seq + ", material_name="
				+ material_name + ", material_description=" + material_description + ", material_price="
				+ material_price + "]";
	}
	
	
	
}
