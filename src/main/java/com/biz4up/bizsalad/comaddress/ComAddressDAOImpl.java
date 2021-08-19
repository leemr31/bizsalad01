package com.biz4up.bizsalad.comaddress;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class ComAddressDAOImpl implements ComAddressDAO{
	String namespace="com.biz4up.bizsalad.address.comAddressDAO";

	@Autowired
	SqlSession session;
	
	
	@Override
	public List<ComAddressVO> addressList() throws Exception {
		return session.selectList(namespace + ".addressList");		
	}


	@Override
	public ComAddressVO read(String company_seq) throws Exception {
		return session.selectOne(namespace + ".read", company_seq);
	}


	@Override
	public List<ComAddressVO> addressList2(String company_seq) throws Exception {
		return session.selectList(namespace + ".addressList2", company_seq);		
	}


	@Override
	public void insert(ComAddressVO vo) throws Exception {
		session.insert(namespace + ".addressInsert", vo);		
	}


	@Override
	public String last_UA_seq(String company_seq) throws Exception {
		return session.selectOne(namespace + ".lastId", company_seq);
	}


	@Override
	public void update(ComAddressVO vo) throws Exception {
		session.update(namespace + ".addressUpdate", vo);		
	}


	@Override
	public void delete(String com_address_seq) throws Exception {
		session.delete(namespace + ".addressDelete", com_address_seq);		
	}

}
