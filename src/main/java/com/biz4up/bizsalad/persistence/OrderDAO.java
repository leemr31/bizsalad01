package com.biz4up.bizsalad.persistence;

import java.util.List;

import com.biz4up.bizsalad.domain.AccountVO;
import com.biz4up.bizsalad.domain.Criteria;
import com.biz4up.bizsalad.domain.KongjeongVO;
import com.biz4up.bizsalad.domain.OrderTableVO;
import com.biz4up.bizsalad.domain.OrderTempVO;
import com.biz4up.bizsalad.domain.PurchaseTableVO;
import com.biz4up.bizsalad.domain.UserCardVO;

public interface OrderDAO {
	public List<KongjeongVO> list(Criteria cri) throws Exception;
	public KongjeongVO read(String oid) throws Exception;
	public int totalCount(Criteria cri) throws Exception;
	public KongjeongVO read2(String order_seq) throws Exception;
	public List<KongjeongVO> list_pms(Criteria cri) throws Exception; /* 20210715 thanksgv*/
	
	public void orderInsert(OrderTableVO vo) throws Exception;
	public List<UserCardVO> card(String user_seq) throws Exception;
	public List<AccountVO> account(String user_seq) throws Exception;
	public void update(OrderTableVO vo) throws Exception;
	public void purchaseInsert(PurchaseTableVO vo) throws Exception;
	
	public List<OrderTempVO> order_list(Criteria cri) throws Exception;
	public int totalCount1(Criteria cri) throws Exception;
	
	public String last_seq()throws Exception;
    public String last_pur_seq(String user_seq)throws Exception;
}
