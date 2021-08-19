package com.biz4up.bizsalad.persistence;

import com.biz4up.bizsalad.domain.OrderVO;
import com.biz4up.bizsalad.domain.PostVO;
import com.biz4up.bizsalad.domain.CartAddressVO;


public interface PostDAO {
	public PostVO post(String cart_seq, String company_seq,String option_seq) throws Exception;
	public PostVO post2(String cart_seq, int flow) throws Exception;
	public CartAddressVO upost(String cart_seq) throws Exception;
	public void update(String option_seq) throws Exception;
}
