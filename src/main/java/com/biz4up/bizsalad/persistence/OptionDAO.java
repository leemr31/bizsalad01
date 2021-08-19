package com.biz4up.bizsalad.persistence;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.json.JSONObject;

import com.biz4up.bizsalad.domain.FacReviewVO;
import com.biz4up.bizsalad.domain.FactualReplyVO;
import com.biz4up.bizsalad.domain.KongjeongVO;
import com.biz4up.bizsalad.domain.OptionContentVO;
import com.biz4up.bizsalad.domain.ReviewVO;


public interface OptionDAO {
	public OptionContentVO read(String cart01); //첫번째 공정 내용 읽기
	public String readinto(String cart01);	//첫번째 공정의 cart_option 읽기
	public String cartdescread(String cart_seq);	//기본 입력내용 cart_desc 필드의 json데이터 읽기
	
	public void insertReview(ReviewVO vo); //완성품 리뷰 쓰기 - product review table에 insert
	public ReviewVO readReview(String purchase_seq);	// 주문번호로 완성품 리뷰내용 불러오기
	public FacReviewVO readFacReview(String option_seq);	// 옵션번호로 해당업체 제작내용 불러오기
	public void facreviewreply(HashMap<String, Object> map);	// 공정결과에 대한 댓글 입력 factual_review_reply table
	public FactualReplyVO readFactualReply(String fr_bbs_seq);	// 제작내용번호로 사용자가 남긴 댓글내용 불러오기
}
