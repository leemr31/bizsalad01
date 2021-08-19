package com.biz4up.bizsalad.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.biz4up.bizsalad.user.AcntVO;
import com.biz4up.bizsalad.user.CardVO;
import com.biz4up.bizsalad.user.UserAddrVO;
import com.biz4up.bizsalad.user.UserInfoVO;
@Repository
public class UserInfoDAOImpl implements UserInfoDAO {
	String namespace="com.biz4up.bizsalad.mapper.UserInfoMapper";
	@Autowired
	SqlSession session;

	@Override
	public void insert(String user_seq) throws Exception {
		session.insert(namespace+".insert",user_seq);

	}

	@Override
	public void update(UserInfoVO vo) throws Exception {
		session.update(namespace+".update",vo);

	}

	@Override
	public UserInfoVO read(String user_seq) throws Exception {
		return session.selectOne(namespace+".read",user_seq);

	}


	@Override
	public void insertacnt(AcntVO vo) throws Exception {
		session.insert(namespace+".account",vo);
		
	}

	@Override
	public AcntVO readAcnt(String user_seq) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace+".readAcnt",user_seq);
	}


	@Override
	public void updateacnt(AcntVO vo) throws Exception {
		session.update(namespace+".updateAcnt",vo);
		
	}

}
