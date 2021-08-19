package com.biz4up.bizsalad.persistence;

import java.util.List;

import com.biz4up.bizsalad.domain.Company_infoVO;
import com.biz4up.bizsalad.domain.Company_orderVO;
import com.biz4up.bizsalad.domain.Criteria;
import com.biz4up.bizsalad.domain.FactualQnAVO;
import com.biz4up.bizsalad.domain.KongjeongVO;
import com.biz4up.bizsalad.domain.OrderVO;
import com.biz4up.bizsalad.domain.PostVO;
import com.biz4up.bizsalad.domain.CartAddressVO;

public interface ProcessDAO {
	public List<Company_infoVO> company() throws Exception;
	public List<Company_orderVO> listJSON(Criteria cri) throws Exception;
	public Company_orderVO image(String option_seq,String cart_seq) throws Exception;
	public OrderVO read(String option_seq) throws Exception;
	public OrderVO cart(String option_seq) throws Exception;
	public void update(OrderVO vo) throws Exception;
	public int totalCount (Criteria cri);
	public void insert(FactualQnAVO vo);
}
