package com.biz4up.bizsalad.persistence;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.biz4up.bizsalad.company.CompanyVO;

@Repository
public class CompanyDAOImpl implements CompanyDAO {
	String namespace="com.biz4up.bizsalad.mapper.companyMapper";
	@Autowired
	SqlSession session;
	
	@Override
	public void insert(CompanyVO vo) throws Exception {
		session.insert(namespace+".insert",vo);
	}

	@Override
	public CompanyVO login(String company_id) throws Exception {
		
		return session.selectOne(namespace + ".login", company_id);
	}
	
	@Override
	public void updatepwd(CompanyVO vo) throws Exception {
		session.insert(namespace+".updatepwd",vo);
	}
}
