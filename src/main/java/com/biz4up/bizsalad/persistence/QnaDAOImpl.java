package com.biz4up.bizsalad.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.biz4up.bizsalad.domain.Criteria;
import com.biz4up.bizsalad.domain.QnaReplyVO;
import com.biz4up.bizsalad.domain.QnaVO;

@Repository
public class QnaDAOImpl implements QnaDAO{
	@Autowired
	SqlSession session;
	
	
	String namespace="com.biz4up.bizsalad.mapper.QnaMapper";
	
	
	@Override
	public void insert(QnaVO vo) throws Exception {
		session.insert(namespace + ".insert", vo);
	}


	@Override
	public List<QnaVO> list(Criteria cri) throws Exception {
		return session.selectList(namespace + ".list", cri);
	}


	@Override
	public int totalCount(Criteria cri) throws Exception {
		return session.selectOne(namespace + ".totalCount", cri);
	}


	@Override
	public QnaVO read(String Qna_bbs_seq) throws Exception {
		return session.selectOne(namespace + ".read", Qna_bbs_seq);
	}


	@Override
	public void update(QnaVO vo) throws Exception {
		session.update(namespace + ".update", vo);
	}


	@Override
	public void delete(String qna_bbs_seq) throws Exception {
		session.delete(namespace + ".delete", qna_bbs_seq);		
	}


	@Override
	public List<QnaReplyVO> replyList(String qna_bbs_seq) throws Exception {
		return session.selectList(namespace + ".replyList", qna_bbs_seq);
	}


	@Override
	public void replyInsert(QnaReplyVO vo) throws Exception {
		session.insert(namespace + ".replyInsert", vo);
	}


	@Override
	public void replyDelete(String qna_bbs_reply_seq) throws Exception {
		session.delete(namespace + ".replyDelete", qna_bbs_reply_seq);		
	}
	
}
