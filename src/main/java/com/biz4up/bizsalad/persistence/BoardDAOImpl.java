package com.biz4up.bizsalad.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.biz4up.bizsalad.domain.Criteria;
import com.biz4up.bizsalad.domain.OrderVO;
import com.biz4up.bizsalad.domain.Product_reviewVO;

@Repository
public class BoardDAOImpl implements BoardDAO{
	String namespace="com.biz4up.bizsalad.mapper.BoardMapper";
	@Autowired
	SqlSession session;
	@Override
	public Product_reviewVO read(String user_seq) throws Exception {
		return session.selectOne(namespace + ".read", user_seq);
	}
	@Override
	public List<Product_reviewVO> listJSON(Criteria cri) throws Exception {
		return session.selectList(namespace + ".listJSON", cri);
	}
	@Override
	public int totalCount(Criteria cri) {
		return session.selectOne(namespace + ".totalCount", cri);
	}
}
