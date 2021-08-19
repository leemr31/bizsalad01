package com.biz4up.bizsalad.persistence;

import java.util.List;

import com.biz4up.bizsalad.domain.Criteria;
import com.biz4up.bizsalad.domain.MaterialVO;
import com.biz4up.bizsalad.domain.Temp_OptionVO;

public interface Temp_OptionDAO {

	public List<Temp_OptionVO> list(Criteria cri)throws Exception;
	public Temp_OptionVO read(String option_seq)throws Exception;
	public void insert(Temp_OptionVO vo) throws Exception;
	public List<MaterialVO> mlist(String manufacture_seq) throws Exception;
	public int materialPrice(String material_seq) throws Exception;
	
	public String last_seq(String cart_seq) throws Exception;
}
