package com.biz4up.bizsalad.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;

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
public class AdminDAOImple implements AdminDAO {
	String namespace="com.biz4up.bizsalad.mapper.AdminMapper";
	@Autowired
	SqlSession session;
	
	@Override
	public List<AdminCompanyVO> company() throws Exception {
		return session.selectList(namespace + ".company");
	}
	
	@Override
	public List<AdminUserVO> user() throws Exception {
		return session.selectList(namespace + ".user");
	}
	
	
	
	@Override
	public List<AdminSettleVO> settle() throws Exception {
		return session.selectList(namespace + ".settle");
	}
	
	@Override
	public List<AdminProductVO> product() throws Exception {
		return session.selectList(namespace + ".product");
	}
	
	@Override
	public List<AdminCateVO> cate() throws Exception {
		return session.selectList(namespace + ".cate");
	}
	
	
	
	@Override
	public List<AdminInquiryVO> inquiry() throws Exception {
		return session.selectList(namespace + ".inquiry");
	}
	
	@Override
	public List<AdminQnaVO> qna() throws Exception {
		return session.selectList(namespace + ".qna");
	}
	
	@Override
	public List<AdminTellVO> tell() throws Exception {
		return session.selectList(namespace + ".tell");
	}
	
	@Override
	public List<AdminNoticeVO> notice() throws Exception {
		return session.selectList(namespace + ".notice");
	}
	
	
	@Override
	public List<AdminReviewDoneVO> review_done() throws Exception {
		return session.selectList(namespace + ".review_done");
	}
	
	@Override
	public List<AdminReviewProcessVO> review_process() throws Exception {
		return session.selectList(namespace + ".review_process");
	}
	
	@Override
	public List<AdminReviewProductVO> review_product() throws Exception {
		return session.selectList(namespace + ".review_product");
	}
	
	
	
	@Override
	public List<AdminBannerMainVO> banner_main() throws Exception {
		return session.selectList(namespace + ".banner_main");
	}
	
	@Override
	public List<AdminBannerProductVO> banner_product() throws Exception {
		return session.selectList(namespace + ".banner_product");
	}
	
	@Override
	public List<AdminBannerUtubeVO> banner_utube() throws Exception {
		return session.selectList(namespace + ".banner_utube");
	}
	
	@Override
	public List<AdminBannerInfluVO> banner_influ() throws Exception {
		return session.selectList(namespace + ".banner_influ");
	}
	
	@Override
	public List<AdminBannerReviewVO> banner_review() throws Exception {
		return session.selectList(namespace + ".banner_review");
	}

}
