package com.biz4up.bizsalad.persistence;

import java.util.List;

import com.biz4up.bizsalad.domain.SumVO;
import com.biz4up.bizsalad.domain.CartVO;

public interface CartDAO {
	public List<CartVO> cartList(String user_seq)throws Exception;
	public List<SumVO> cartSum(String cart_seq) throws Exception;
	public void cartInsert(CartVO vo) throws Exception;
	public CartVO cartRead(String cart_seq) throws Exception;
	
	//0708 업데이트
	public String last_seq(String user_seq) throws Exception;
	public void cartUpdate(CartVO vo);
}
