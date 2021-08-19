package com.biz4up.bizsalad.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.biz4up.bizsalad.domain.CompBalVO;
import com.biz4up.bizsalad.domain.Criteria;

@Repository
public class CompBalDAOImpl implements CompBalDAO{
	
	String namespace="com.biz4up.bizsalad.persistence.CompBalDAO";
	
	@Autowired
	SqlSession session;

	@Override
	public List<CompBalVO> comp_bal_list(Criteria cri) throws Exception {
		return session.selectList(namespace + ".comp_bal_list", cri);
	}

	@Override
	public int totalCount(Criteria cri) throws Exception {
		return session.selectOne(namespace+".totalCount", cri);
	}

}
