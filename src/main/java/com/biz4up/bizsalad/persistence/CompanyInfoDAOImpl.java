package com.biz4up.bizsalad.persistence;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.biz4up.bizsalad.company.CompanyInfoVO;
import com.biz4up.bizsalad.company.CompanyPortVO;
import com.biz4up.bizsalad.user.AcntVO;

@Repository
public class CompanyInfoDAOImpl implements CompanyInfoDAO {

	String namespace="com.biz4up.bizsalad.mapper.companyInfoMapper";
	@Autowired
	SqlSession session;
	@Override
	public void insert(CompanyInfoVO vo) throws Exception{
		session.insert(namespace+".infoInsert",vo);
		
	}
	@Override
	public void update(CompanyInfoVO vo) throws Exception {
		session.update(namespace+".infoUpdate",vo);
		
	}
	@Override
	public List<Map> manufactList() throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace+".manulist");
	}
	@Override
	public void portInsert(String company_seq) throws Exception {
		session.insert("com.biz4up.bizsalad.mapper.companyPortMapper"+".portInsert",company_seq);
		
	}
	@Override
	public void insertacnt(AcntVO vo) throws Exception {
		session.insert(namespace+".account",vo);
		
	}
	@Override
	public void portUpdate(CompanyPortVO vo) throws Exception {
		session.update("com.biz4up.bizsalad.mapper.companyPortMapper"+".portUpdate",vo);
		
	}
	@Override
	public CompanyInfoVO inforead(String company_seq) throws Exception {
		return session.selectOne(namespace+".list",company_seq);
		
	}
	@Override
	public CompanyPortVO portread(String company_seq) throws Exception {
		return session.selectOne("com.biz4up.bizsalad.mapper.companyPortMapper"+".portread",company_seq);
		
	}
	@Override
	public AcntVO accountread(String company_seq) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace+".accountread",company_seq);
	}
	@Override
	public void accountupdate(AcntVO vo) throws Exception {
		session.update(namespace+".acntUpdate",vo);
		
	}
}
