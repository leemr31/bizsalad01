package com.biz4up.bizsalad.persistence;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.biz4up.bizsalad.domain.OrderVO;
import com.biz4up.bizsalad.domain.PostVO;
import com.biz4up.bizsalad.domain.CartAddressVO;

@Repository
public class PostDAOImpl implements PostDAO{
	String namespace="com.biz4up.bizsalad.mapper.PostMapper";
	@Autowired
	SqlSession session;
	@Override
	public PostVO post(String cart_seq,String company_seq,String option_seq) throws Exception {
		HashMap<String, Object> map=new HashMap<String, Object>();
		map.put("cart_seq", cart_seq);
		map.put("company_seq", company_seq);
		map.put("option_seq", option_seq);
		return session.selectOne(namespace + ".post", map);
	}
	@Override
	public PostVO post2(String cart_seq,int flow) throws Exception {
		HashMap<String, Object> map=new HashMap<String, Object>();
		map.put("cart_seq", cart_seq);
		map.put("flow", flow);
		return session.selectOne(namespace + ".post2", map);
	}
	@Override
	public CartAddressVO upost(String cart_seq) throws Exception {;
		return session.selectOne(namespace + ".upost", cart_seq);
	}
	@Override
	public void update(String option_seq) throws Exception  {
		session.update(namespace + ".update", option_seq);
	}
}
