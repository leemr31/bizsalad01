package com.biz4up.bizsalad.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.biz4up.bizsalad.user.CardVO;

@Repository
public class CardDAOImpl implements CardDAO {
	String namespace="com.biz4up.bizsalad.mapper.cardMapper";
	@Autowired
	SqlSession session;

	@Override
	public void insert(CardVO vo) throws Exception {
		session.insert(namespace+".insert",vo);

	}

	@Override
	public void update(CardVO vo) throws Exception {
		session.update(namespace+".update",vo);

	}

	@Override
	public void delete(String user_card_seq) throws Exception {
		session.delete(namespace+".delete",user_card_seq);

	}

	@Override
	public List<CardVO> list(String user_seq) throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace+".list",user_seq);
	}

}
