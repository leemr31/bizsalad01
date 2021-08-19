package com.biz4up.bizsalad.persistence;

import java.util.List;

import com.biz4up.bizsalad.domain.Criteria;
import com.biz4up.bizsalad.domain.Product_reviewVO;


public interface BoardDAO {
	public List<Product_reviewVO> listJSON(Criteria cri) throws Exception;
	public int totalCount (Criteria cri);
	public Product_reviewVO read(String user_seq) throws Exception;
}
