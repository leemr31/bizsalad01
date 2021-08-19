package com.biz4up.bizsalad.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.biz4up.bizsalad.domain.ManufactureVO;
import com.biz4up.bizsalad.domain.MaterialVO;
import com.biz4up.bizsalad.domain.ProductVO;

@Repository
public class ProductDAOImpl implements ProductDAO{
	String namespace="com.biz4up.bizsalad.mapper.ProductMapper";
	@Autowired
	SqlSession session;
	
	@Override
	public List<ProductVO> proList() {
		
		return session.selectList(namespace+".proList");
	}

	@Override
	public List<ManufactureVO> manfList() {
		// TODO Auto-generated method stub
		return session.selectList(namespace+".manfList");
	}

	@Override
	public List<MaterialVO> matrList() {
		// TODO Auto-generated method stub
		return session.selectList(namespace+".matrList");
	}

	@Override
	public ProductVO proRead(String product_seq) {
		// TODO Auto-generated method stub
		return session.selectOne(namespace+".proRead", product_seq);
	}
	
}
