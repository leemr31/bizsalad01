package com.biz4up.bizsalad.persistence;

import java.util.List;
import java.util.Map;

import com.biz4up.bizsalad.company.CompanyInfoVO;
import com.biz4up.bizsalad.company.CompanyPortVO;
import com.biz4up.bizsalad.user.AcntVO;

public interface CompanyInfoDAO {
	public void insert(CompanyInfoVO vo) throws Exception;
	public List<Map> manufactList()throws Exception;
	public void update(CompanyInfoVO vo) throws Exception;
	public void portInsert(String company_seq) throws Exception;
	public void portUpdate(CompanyPortVO vo) throws Exception;
	public void insertacnt(AcntVO vo) throws Exception;
	public CompanyInfoVO inforead(String company_seq) throws Exception;
	public CompanyPortVO portread(String company_seq) throws Exception;
	public AcntVO accountread(String company_seq) throws Exception;
	public void accountupdate(AcntVO vo) throws Exception;
}
