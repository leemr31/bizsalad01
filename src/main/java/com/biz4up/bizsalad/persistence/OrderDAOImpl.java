package com.biz4up.bizsalad.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.biz4up.bizsalad.domain.AccountVO;
import com.biz4up.bizsalad.domain.Criteria;
import com.biz4up.bizsalad.domain.KongjeongVO;
import com.biz4up.bizsalad.domain.OrderTableVO;
import com.biz4up.bizsalad.domain.OrderTempVO;
import com.biz4up.bizsalad.domain.PurchaseTableVO;
import com.biz4up.bizsalad.domain.UserCardVO;

@Repository
public class OrderDAOImpl implements OrderDAO{
	String namespace="com.biz4up.bizsalad.mapper.OrderMapper";
	@Autowired
	SqlSession session;
	
	@Override
	public List<KongjeongVO> list(Criteria cri) throws Exception {
		return session.selectList(namespace+".list", cri);
	}

	@Override
	public KongjeongVO read(String oid) throws Exception {
		return session.selectOne(namespace+".read", oid);
	}

	@Override
	public KongjeongVO read2(String order_seq) throws Exception {
		return session.selectOne(namespace+".read2", order_seq);
	}
	
	@Override
	public int totalCount(Criteria cri) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace+".totalCount", cri);
	}
	
	@Override
	public List<KongjeongVO> list_pms(Criteria cri) throws Exception { //20210715 thanksgv
		return session.selectList(namespace+".list_pms", cri);
	}

	@Override
	public void orderInsert(OrderTableVO vo) throws Exception {
		session.insert(namespace + ".orderInsert", vo);
		
	}

	@Override
	public List<UserCardVO> card(String user_seq) throws Exception {		
		return session.selectList(namespace + ".card", user_seq);		
	}

	@Override
	public List<AccountVO> account(String user_seq) throws Exception {
		return session.selectList(namespace + ".account", user_seq);
	}

	@Override
	public void update(OrderTableVO vo) throws Exception {
		session.update(namespace + ".orderUpdate", vo);		
	}

	@Override
	public void purchaseInsert(PurchaseTableVO vo) throws Exception {
		session.insert(namespace + ".purchaseInsert", vo);		
	}
	
	@Override
	public List<OrderTempVO> order_list(Criteria cri) throws Exception {
		return session.selectList(namespace + ".order_list", cri);
	}
	
	@Override
	public int totalCount1(Criteria cri) throws Exception {
		return session.selectOne(namespace + ".totalCount_mr", cri);
	}
	
    @Override
    public String last_seq() throws Exception {
      return session.selectOne(namespace + ".lastId");
   }

    @Override
    public String last_pur_seq(String user_seq) throws Exception {
      return session.selectOne(namespace + ".purlastId", user_seq);
   }
}
