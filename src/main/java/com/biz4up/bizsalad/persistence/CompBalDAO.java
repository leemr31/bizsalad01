package com.biz4up.bizsalad.persistence;

import java.util.List;

import com.biz4up.bizsalad.domain.CompBalVO;
import com.biz4up.bizsalad.domain.Criteria;

public interface CompBalDAO {
	public List<CompBalVO> comp_bal_list(Criteria cri) throws Exception;
	public int totalCount(Criteria cri) throws Exception;
}
