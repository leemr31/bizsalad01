package com.biz4up.bizsalad.persistence;

import java.util.List;

import com.biz4up.bizsalad.domain.Criteria;
import com.biz4up.bizsalad.domain.PqnaReplyVO;
import com.biz4up.bizsalad.domain.PqnaVO;

public interface PqnaDAO {
	public void insert(PqnaVO vo)throws Exception;
	public List<PqnaVO> list(Criteria cri)throws Exception;
	public int totalCount(Criteria cri)throws Exception;
	public PqnaVO read(String pqna_bbs_seq)throws Exception;
	public void update(PqnaVO vo)throws Exception;
	public void delete(String pqna_bbs_seq)throws Exception;
	
	//댓글
	public List<PqnaReplyVO> replyList(String pqna_bbs_seq)throws Exception;
	public void replyInsert(PqnaReplyVO vo)throws Exception;
	public void replyDelete(String pqna_bbs_reply_seq)throws Exception;
}
