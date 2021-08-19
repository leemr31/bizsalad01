package com.biz4up.bizsalad.persistence;

import com.biz4up.bizsalad.company.CompanyVO;

public interface CompanyDAO {
	public void insert(CompanyVO vo) throws Exception;
	public CompanyVO login(String company_id) throws Exception;
	
	public void updatepwd(CompanyVO vo) throws Exception; //20210719 thanksgv
}
