package com.biz4up.bizsalad.persistence;

import java.util.List;

import com.biz4up.bizsalad.domain.ManufactureVO;
import com.biz4up.bizsalad.domain.MaterialVO;
import com.biz4up.bizsalad.domain.ProductVO;

public interface ProductDAO {
	public List<ProductVO> proList();
	public List<ManufactureVO> manfList();
	public List<MaterialVO> matrList();
	public ProductVO proRead(String product_seq);
}
