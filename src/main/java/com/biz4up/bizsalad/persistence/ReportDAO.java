package com.biz4up.bizsalad.persistence;

import java.util.List;

import com.biz4up.bizsalad.domain.Criteria;
import com.biz4up.bizsalad.domain.PqnaReplyVO;
import com.biz4up.bizsalad.domain.ReportReplyVO;
import com.biz4up.bizsalad.domain.ReportVO;

public interface ReportDAO {
	public void insert(ReportVO vo)throws Exception;
	public List<ReportVO> list(Criteria cri)throws Exception;
	public int totalCount(Criteria cri)throws Exception;
	public ReportVO read(String rp_bbs_seq)throws Exception;
	public void update(ReportVO vo)throws Exception;
	public void delete(String rp_bbs_seq)throws Exception;
	public void updateType(ReportVO vo)throws Exception;
	
	//댓글
	public List<PqnaReplyVO> replyList(String rp_bbs_seq)throws Exception;
	public void replyInsert(ReportReplyVO vo)throws Exception;
	public void replyDelete(String rp_reply_seq)throws Exception;
}
