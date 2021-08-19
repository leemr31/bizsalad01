package com.biz4up.bizsalad.domain;

public class Criteria {
	private int page;
	private int perPageNum;
	private String searchType;
	private String keyword;
    private String company_seq;
    private String purchase_type;
    private String type;
	private String date;
    private String manufacture_seq;
    private String user_seq; /* 210716 thanksgv */
    
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

	public String getCompany_seq() {
		return company_seq;
	}

	public void setCompany_seq(String company_seq) {
		this.company_seq = company_seq;
	}

	public String getPurchase_type() {
		return purchase_type;
	}

	public void setPurchase_type(String purchase_type) {
		this.purchase_type = purchase_type;
	}

	public Criteria() {
		this(1, 10);
	}

	public Criteria(int page, int perPageNum) {
		this.page = page;
		this.perPageNum = perPageNum;
	}

	// 1�������� ��� pageStart�� 0
	public int getPageStart() {
		return (this.page - 1) * perPageNum;
	}

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public int getPerPageNum() {
		return perPageNum;
	}

	public void setPerPageNum(int perPageNum) {
		this.perPageNum = perPageNum;
	}

	public String getSearchType() {
		return searchType;
	}

	public void setSearchType(String searchType) {
		this.searchType = searchType;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	@Override
	public String toString() {
		return "Criteria [page=" + page + ", perPageNum=" + perPageNum + ", searchType=" + searchType + ", keyword="
				+ keyword + ", company_seq=" + company_seq + ", purchase_type=" + purchase_type + ", type=" + type
				+ ", date=" + date + ", manufacture_seq=" + manufacture_seq + ", user_seq=" + user_seq + "]";
	}
	
	
}
