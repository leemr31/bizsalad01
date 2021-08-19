package com.biz4up.bizsalad.persistence;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.SqlSession;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.biz4up.bizsalad.domain.FacReviewVO;
import com.biz4up.bizsalad.domain.FactualReplyVO;
import com.biz4up.bizsalad.domain.KongjeongVO;
import com.biz4up.bizsalad.domain.OptionContentVO;
import com.biz4up.bizsalad.domain.ReviewVO;


@Repository
public class OptionDAOImpl implements OptionDAO{
	String  namespace="com.biz4up.bizsalad.mapper.OrderMapper";
	@Autowired
	SqlSession session;
	
	@Override
	public OptionContentVO read(String cart01) {
		
		return session.selectOne(namespace+".optionread", cart01);
	}

	@Override
	public String readinto(String cart01) {
		return session.selectOne(namespace+".optionreadinto", cart01);
	}

	@Override
	public String cartdescread(String cart_seq) {
		// TODO Auto-generated method stub
		return session.selectOne(namespace+".cartdescread", cart_seq);
	}

	@Override
	public void insertReview(ReviewVO vo) {
		// TODO Auto-generated method stub
		session.insert(namespace+".insertReview", vo);
	}

	@Override
	public ReviewVO readReview(String purchase_seq) {
		// TODO Auto-generated method stub
		return session.selectOne(namespace+".readReview", purchase_seq);
	}

	@Override
	public FacReviewVO readFacReview(String option_seq) {
		// TODO Auto-generated method stub
		return session.selectOne(namespace+".readFacReview", option_seq);
	}

	@Override
	public void facreviewreply(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		session.insert(namespace+".facreviewreply", map);
	}

	@Override
	public FactualReplyVO readFactualReply(String fr_bbs_seq) {
		// TODO Auto-generated method stub
		return session.selectOne(namespace+".readFactualReply", fr_bbs_seq);
	}
	
}
