package com.biz4up.bizsalad.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.biz4up.bizsalad.user.AcntVO;
import com.biz4up.bizsalad.user.CardVO;
import com.biz4up.bizsalad.user.UserVO;

@Repository
public class UserDAOImpl implements UserDAO {
	String namespace="com.biz4up.bizsalad.mapper.UserMapper";
	@Autowired
	SqlSession session;


	@Override
	public UserVO login(String uid) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace + ".login", uid);
	}

	@Override
	public void insert(UserVO vo) throws Exception {
		session.insert(namespace + ".insert", vo);
		
	}

	@Override
	public void update(UserVO vo) throws Exception {
		session.selectOne(namespace + ".update",vo);
		
	}

	@Override
	public List<UserVO> list() throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace + ".list");
	}

	@Override
	public void delete(String user_seq) throws Exception {
		session.selectOne(namespace + ".delete",user_seq);
		
	}
	
	@Override
	public void updatepwd(UserVO vo) throws Exception { //20210719 thanksgv
		session.selectOne(namespace + ".updatepwd",vo);
	}

}
