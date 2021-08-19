package com.biz4up.bizsalad.persistence;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.biz4up.bizsalad.domain.Company_infoVO;
import com.biz4up.bizsalad.domain.Company_orderVO;
import com.biz4up.bizsalad.domain.Criteria;
import com.biz4up.bizsalad.domain.FactualQnAVO;
import com.biz4up.bizsalad.domain.KongjeongVO;
import com.biz4up.bizsalad.domain.OrderVO;
import com.biz4up.bizsalad.domain.PostVO;
import com.biz4up.bizsalad.domain.CartAddressVO;

@Repository
public class ProcessDAOImpl implements ProcessDAO{
	String namespace="com.biz4up.bizsalad.mapper.ProcessMapper";
	@Autowired
	SqlSession session;

	@Override
	public OrderVO read(String option_seq) throws Exception {
		return session.selectOne(namespace + ".read", option_seq);
	}
	@Override
	public OrderVO cart(String option_seq) throws Exception {
		return session.selectOne(namespace + ".cart", option_seq);
	}
	@Override
	public List<Company_infoVO> company() throws Exception {
		return session.selectList(namespace + ".company");
	}
	@Override
	public List<Company_orderVO> listJSON(Criteria cri) throws Exception {
		return session.selectList(namespace + ".listJSON", cri);
	}
	@Override
	public void update(OrderVO vo) throws Exception  {
		session.update(namespace + ".update", vo);
	}
	@Override
	public Company_orderVO image(String option_seq,String cart_seq) throws Exception {
		HashMap<String, Object> map=new HashMap<String, Object>();
		map.put("option_seq", option_seq);
		map.put("cart_seq", cart_seq);
		return session.selectOne(namespace + ".image", map);
	}
	@Override
	public int totalCount(Criteria cri) {
		return session.selectOne(namespace + ".totalCount", cri);
	}
	@Override
	public void insert(FactualQnAVO vo) {
		session.insert(namespace + ".insert", vo);		
	}
}
