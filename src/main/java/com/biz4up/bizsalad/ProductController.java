package com.biz4up.bizsalad;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.biz4up.bizsalad.domain.ManufactureVO;
import com.biz4up.bizsalad.domain.MaterialVO;
import com.biz4up.bizsalad.domain.ProductVO;
import com.biz4up.bizsalad.persistence.ProductDAO;

@Controller
@RequestMapping("/product")
public class ProductController {
	@Autowired
	ProductDAO dao;
	
	@RequestMapping("/register")
	public String register(Model model) {
		model.addAttribute("list",dao.proList());
		model.addAttribute("manufacture",dao.manfList());
		model.addAttribute("material",dao.matrList());
		return "/categories/cateRegister";
	}
	
	
	
	@RequestMapping("/proRead")
	@ResponseBody
	public ArrayList<ProductVO> proinfo(String prod_seq) throws Exception{
		ProductVO vo=dao.proRead(prod_seq);
		
		ArrayList<ProductVO> arrl = new ArrayList<>();
		arrl.add(vo);
		System.out.println(arrl);
		return arrl;
	}
	
	@RequestMapping("/product.json")
	@ResponseBody
	public List<ProductVO> proList() {
		return dao.proList();
	}
	@RequestMapping("/manufacture.json")
	@ResponseBody
	public List<ManufactureVO> manfList() {
		return dao.manfList();
	}
	@RequestMapping("/material.json")
	@ResponseBody
	public List<MaterialVO> matrList() {
		return dao.matrList();
	}
}
