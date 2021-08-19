package com.biz4up.bizsalad.persistence;

import java.util.List;

import com.biz4up.bizsalad.user.CardVO;

public interface CardDAO {
	public void insert(CardVO vo) throws Exception;
	public void update(CardVO vo) throws Exception;
	public void delete(String user_card_seq) throws Exception;
	public List<CardVO> list(String user_seq) throws Exception;

}
