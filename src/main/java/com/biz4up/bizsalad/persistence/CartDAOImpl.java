package com.biz4up.bizsalad.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.biz4up.bizsalad.domain.SumVO;
import com.biz4up.bizsalad.domain.CartVO;

@Repository
public class CartDAOImpl implements CartDAO {
	String namespace="com.biz4up.bizsalad.persistence.CartDAO";
	
	@Autowired
	SqlSession session;
	
	@Override
	public List<CartVO> cartList(String user_seq) throws Exception {
		return session.selectList(namespace + ".cartList", user_seq);
	}

	@Override
	public List<SumVO> cartSum(String cart_seq) throws Exception {		
		return session.selectList(namespace + ".cartSum", cart_seq);
	}

	@Override
	public void cartInsert(CartVO vo) throws Exception {
		session.insert(namespace + ".insert", vo);
	}
	
	@Override
	public CartVO cartRead(String cart_seq) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace+".cartRead",cart_seq);
	}
	
	//0708 업데이트
	@Override
	public void cartUpdate(CartVO vo) {
		session.update(namespace + ".update", vo);	
	}

	@Override
	public String last_seq(String user_seq) throws Exception {
		return session.selectOne(namespace + ".lastId", user_seq);
	}

}
