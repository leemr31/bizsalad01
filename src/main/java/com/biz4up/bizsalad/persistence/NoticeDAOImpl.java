package com.biz4up.bizsalad.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.biz4up.bizsalad.domain.Criteria;
import com.biz4up.bizsalad.domain.NoticeVO;
import com.biz4up.bizsalad.domain.QnaReplyVO;

@Repository
public class NoticeDAOImpl implements NoticeDAO{
	@Autowired
	SqlSession session;
	
	
	String namespace="com.biz4up.bizsalad.mapper.NoticeMapper";
	
	
	@Override
	public void insert(NoticeVO vo) throws Exception {
		session.insert(namespace + ".insert", vo);
	}


	@Override
	public List<NoticeVO> list(Criteria cri) throws Exception {
		return session.selectList(namespace + ".list", cri);
	}


	@Override
	public int totalCount(Criteria cri) throws Exception {
		return session.selectOne(namespace + ".totalCount", cri);
	}


	@Override
	public NoticeVO read(String notice_bbs_seq) throws Exception {
		return session.selectOne(namespace + ".read", notice_bbs_seq);
	}


	@Override
	public void update(NoticeVO vo) throws Exception {
		session.update(namespace + ".update", vo);
	}


	@Override
	public void delete(String notice_bbs_seq) throws Exception {
		session.delete(namespace + ".delete", notice_bbs_seq);		
	}


	
}
