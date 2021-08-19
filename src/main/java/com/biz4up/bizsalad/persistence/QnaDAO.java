package com.biz4up.bizsalad.persistence;

import java.util.List;

import com.biz4up.bizsalad.domain.Criteria;
import com.biz4up.bizsalad.domain.QnaReplyVO;
import com.biz4up.bizsalad.domain.QnaVO;


public interface QnaDAO {
	public void insert(QnaVO vo)throws Exception;
	public List<QnaVO> list(Criteria cri)throws Exception;
	public int totalCount(Criteria cri)throws Exception;
	public QnaVO read(String qna_bbs_seq)throws Exception;
	public void update(QnaVO vo)throws Exception;
	public void delete(String qna_bbs_seq)throws Exception;
	
	//댓글
	public List<QnaReplyVO> replyList(String qna_bbs_seq)throws Exception;
	public void replyInsert(QnaReplyVO vo)throws Exception;
	public void replyDelete(String qna_bbs_reply_seq)throws Exception;
}
