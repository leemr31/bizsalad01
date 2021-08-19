package com.biz4up.bizsalad.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.biz4up.bizsalad.domain.UserAddressVO;

@Repository
public class UserAddressDAOImpl implements UserAddressDAO{
	String namespace="com.biz4up.bizsalad.persistence.UserAddressDAO";

	@Autowired
	SqlSession session;
	
	
	@Override
	public List<UserAddressVO> addressList() throws Exception {
		return session.selectList(namespace + ".addressList");		
	}


	@Override
	public UserAddressVO read(String user_seq) throws Exception {
		return session.selectOne(namespace + ".read", user_seq);
	}


	@Override
	public List<UserAddressVO> addressList2(String user_seq) throws Exception {
		return session.selectList(namespace + ".addressList2", user_seq);		
	}


	@Override
	public void insert(UserAddressVO vo) throws Exception {
		session.insert(namespace + ".addressInsert", vo);		
	}


	@Override
	public String last_UA_seq(String user_seq) throws Exception {
		return session.selectOne(namespace + ".lastId", user_seq);
	}


	@Override
	public void update(UserAddressVO vo) throws Exception {
		session.update(namespace + ".addressUpdate", vo);		
	}


	@Override
	public void delete(String user_address_seq) throws Exception {
		session.delete(namespace + ".addressDelete", user_address_seq);		
	}

}
