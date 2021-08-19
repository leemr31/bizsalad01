package com.biz4up.bizsalad.persistence;

import java.util.List;

import org.springframework.context.annotation.Configuration;
import org.springframework.beans.factory.annotation.Autowired;

import com.biz4up.bizsalad.domain.AdminBannerInfluVO;
import com.biz4up.bizsalad.domain.AdminBannerMainVO;
import com.biz4up.bizsalad.domain.AdminBannerProductVO;
import com.biz4up.bizsalad.domain.AdminBannerReviewVO;
import com.biz4up.bizsalad.domain.AdminBannerUtubeVO;
import com.biz4up.bizsalad.domain.AdminCateVO;
import com.biz4up.bizsalad.domain.AdminCompanyVO;
import com.biz4up.bizsalad.domain.AdminInquiryVO;
import com.biz4up.bizsalad.domain.AdminNoticeVO;
import com.biz4up.bizsalad.domain.AdminProductVO;
import com.biz4up.bizsalad.domain.AdminQnaVO;
import com.biz4up.bizsalad.domain.AdminReviewDoneVO;
import com.biz4up.bizsalad.domain.AdminReviewProcessVO;
import com.biz4up.bizsalad.domain.AdminReviewProductVO;
import com.biz4up.bizsalad.domain.AdminSettleVO;
import com.biz4up.bizsalad.domain.AdminTellVO;
import com.biz4up.bizsalad.domain.AdminUserVO;
import com.biz4up.bizsalad.domain.Criteria;

@Configuration
public interface AdminDAO {
	
	public List<AdminCompanyVO> company() throws Exception;
	public List<AdminUserVO> user() throws Exception;
	
	public List<AdminSettleVO> settle() throws Exception;
	public List<AdminProductVO> product() throws Exception;
	public List<AdminCateVO> cate() throws Exception;
	
	public List<AdminInquiryVO> inquiry() throws Exception;
	public List<AdminQnaVO> qna() throws Exception;
	public List<AdminTellVO> tell() throws Exception;
	public List<AdminNoticeVO> notice() throws Exception;
	
	public List<AdminReviewDoneVO> review_done() throws Exception;
	public List<AdminReviewProcessVO> review_process() throws Exception;
	public List<AdminReviewProductVO> review_product() throws Exception;
	
	public List<AdminBannerMainVO> banner_main() throws Exception;
	public List<AdminBannerProductVO> banner_product() throws Exception;
	public List<AdminBannerUtubeVO> banner_utube() throws Exception;
	public List<AdminBannerInfluVO> banner_influ() throws Exception;
	public List<AdminBannerReviewVO> banner_review() throws Exception;
	
}
