package com.biz4up.bizsalad.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.biz4up.bizsalad.domain.Criteria;
import com.biz4up.bizsalad.domain.MaterialVO;
import com.biz4up.bizsalad.domain.Temp_OptionVO;



public interface Temp_OptionDAOimpl {

	@Repository
	public class Temp_OptionDAOImpl implements Temp_OptionDAO{
		
		String namespace="com.biz4up.bizsalad.mapper.cartOptionMapper";
		
		@Autowired
		SqlSession session;

		@Override
		public List<Temp_OptionVO> list(Criteria cri) throws Exception {
			return session.selectList(namespace + ".list", cri);
		}

		@Override
		public Temp_OptionVO read(String option_seq) throws Exception {
			return session.selectOne(namespace + ".read", option_seq);
		}

		@Override
		public List<MaterialVO> mlist(String manufacture_seq) throws Exception {
			return session.selectList(namespace + ".mlist", manufacture_seq);
		}

		@Override
		public void insert(Temp_OptionVO vo) throws Exception {
			session.insert(namespace + ".insert", vo);
			
		}

		@Override
		public int materialPrice(String material_seq) throws Exception {
			return session.selectOne(namespace + ".materialPrice", material_seq);
		}

		@Override
		public String last_seq(String cart_seq) throws Exception {
			return session.selectOne(namespace + ".lastId", cart_seq);
		}
		
	}
}
