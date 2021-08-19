package com.biz4up.bizsalad.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.biz4up.bizsalad.domain.Criteria;
import com.biz4up.bizsalad.domain.PqnaReplyVO;
import com.biz4up.bizsalad.domain.ReportReplyVO;
import com.biz4up.bizsalad.domain.ReportVO;

@Repository
public class ReportDAOImpl implements ReportDAO{
	@Autowired
	SqlSession session;
	
	
	String namespace="com.biz4up.bizsalad.mapper.ReportMapper";
	
	
	@Override
	public void insert(ReportVO vo) throws Exception {
		session.insert(namespace + ".insert", vo);
	}


	@Override
	public List<ReportVO> list(Criteria cri) throws Exception {
		return session.selectList(namespace + ".list", cri);
	}


	@Override
	public int totalCount(Criteria cri) throws Exception {
		return session.selectOne(namespace + ".totalCount", cri);
	}


	@Override
	public ReportVO read(String rp_bbs_seq) throws Exception {
		return session.selectOne(namespace + ".read", rp_bbs_seq);
	}


	@Override
	public void update(ReportVO vo) throws Exception {
		session.update(namespace + ".update", vo);
	}


	@Override
	public void delete(String rp_bbs_seq) throws Exception {
		session.delete(namespace + ".delete", rp_bbs_seq);		
	}


	@Override
	public List<PqnaReplyVO> replyList(String rp_bbs_seq) throws Exception {
		return session.selectList(namespace + ".replyList", rp_bbs_seq);
	}


	@Override
	public void replyInsert(ReportReplyVO vo) throws Exception {
		session.insert(namespace + ".replyInsert", vo);
	}


	@Override
	public void replyDelete(String rp_reply_seq) throws Exception {
		session.delete(namespace + ".replyDelete", rp_reply_seq);		
	}


	@Override
	public void updateType(ReportVO vo) throws Exception {
		session.update(namespace + ".updateType", vo);
	}
	
}
