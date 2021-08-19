package com.biz4up.bizsalad.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.biz4up.bizsalad.domain.Criteria;
import com.biz4up.bizsalad.domain.PqnaReplyVO;
import com.biz4up.bizsalad.domain.PqnaVO;

@Repository
public class PqnaDAOImpl implements PqnaDAO{
	@Autowired
	SqlSession session;
	
	
	String namespace="com.biz4up.bizsalad.mapper.PqnaMapper";
	
	
	@Override
	public void insert(PqnaVO vo) throws Exception {
		session.insert(namespace + ".insert", vo);
	}


	@Override
	public List<PqnaVO> list(Criteria cri) throws Exception {
		return session.selectList(namespace + ".list", cri);
	}


	@Override
	public int totalCount(Criteria cri) throws Exception {
		return session.selectOne(namespace + ".totalCount", cri);
	}


	@Override
	public PqnaVO read(String pqna_bbs_seq) throws Exception {
		return session.selectOne(namespace + ".read", pqna_bbs_seq);
	}


	@Override
	public void update(PqnaVO vo) throws Exception {
		session.update(namespace + ".update", vo);
	}


	@Override
	public void delete(String pqna_bbs_seq) throws Exception {
		session.delete(namespace + ".delete", pqna_bbs_seq);		
	}


	@Override
	public List<PqnaReplyVO> replyList(String pqna_bbs_seq) throws Exception {
		return session.selectList(namespace + ".replyList", pqna_bbs_seq);
	}


	@Override
	public void replyInsert(PqnaReplyVO vo) throws Exception {
		session.insert(namespace + ".replyInsert", vo);
	}


	@Override
	public void replyDelete(String pqna_bbs_reply_seq) throws Exception {
		session.delete(namespace + ".replyDelete", pqna_bbs_reply_seq);		
	}
	
}
