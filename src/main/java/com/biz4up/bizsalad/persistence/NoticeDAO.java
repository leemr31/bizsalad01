package com.biz4up.bizsalad.persistence;

import java.util.List;

import com.biz4up.bizsalad.domain.Criteria;

import com.biz4up.bizsalad.domain.NoticeVO;


public interface NoticeDAO {
	public void insert(NoticeVO vo)throws Exception;
	public List<NoticeVO> list(Criteria cri)throws Exception;
	public int totalCount(Criteria cri)throws Exception;
	public NoticeVO read(String notice_bbs_seq)throws Exception;
	public void update(NoticeVO vo)throws Exception;
	public void delete(String notice_bbs_seq)throws Exception;
	
}
