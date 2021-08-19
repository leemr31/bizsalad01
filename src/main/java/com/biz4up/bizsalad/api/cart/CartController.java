package com.biz4up.bizsalad.api.cart;

import java.io.File;
import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;


import com.biz4up.bizsalad.domain.SumVO;
import com.biz4up.bizsalad.domain.CartVO;
import com.biz4up.bizsalad.persistence.CartDAO;

@Controller
public class CartController {
	@Resource(name="uploadPath")
	String path;
	
	@Autowired
	CartDAO cdao;
	
	@RequestMapping("/cart/list.json")
	@ResponseBody
	public List<CartVO> cartList(String user_seq) throws Exception{
		return cdao.cartList(user_seq);
	}
	
	@RequestMapping("/cart/read")
	@ResponseBody
	public CartVO cartRead(String cart_seq) throws Exception{
		System.out.println(".."+cdao.cartRead(cart_seq));
		return cdao.cartRead(cart_seq);
	}
	@RequestMapping("/cart/list")
	public String cartList(Model model, String user_seq) throws Exception {
		model.addAttribute("cvo", cdao.cartList(user_seq));		
		return "/cart/list";
	}
	
	@RequestMapping("/cart/sum.json")
	@ResponseBody
	public List<SumVO> cartSum(String cart_seq) throws Exception {
		System.out.println(cdao.cartSum(cart_seq));
		return cdao.cartSum(cart_seq);
	}
	
	@RequestMapping(value="/cart/insert")
	public String insert(String user_seq) throws Exception {			
		return "/cart/cart_insert";
	}
	
	@RequestMapping(value="/cart/insert", method=RequestMethod.POST)
	@ResponseBody
	public HashMap<String, Object> cart_insert(CartVO vo) throws Exception {			
		HashMap<String,Object> map = new HashMap<String,Object>();
		map.put("cart_seq", vo.getCart_seq());
		map.put("product_seq", vo.getProduct_seq());
			
		cdao.cartInsert(vo);
		
		System.out.println(vo.toString());
		return map;
	}
	
	// cart 테이블 업데이트
	   @RequestMapping(value="/cart/update", method=RequestMethod.POST)
	   @ResponseBody
	   public HashMap<String,Object> update(CartVO vo){		
		   HashMap<String,Object> map = new HashMap<String,Object>();		
		   cdao.cartUpdate(vo);
		   return map;
	   } 
	 
		//인트로 이미지 첨부 업로드.
		@RequestMapping(value = "/cart/uploadFile", method = RequestMethod.POST, produces = "text/plain;charset=UTF-8")
		@ResponseBody
		public String uploadAjaxPost(MultipartFile file) throws Exception {		
			String savedName = System.currentTimeMillis() + "_" + file.getOriginalFilename();
			File target = new File(path, savedName);
			FileCopyUtils.copy(file.getBytes(), target);
			return savedName;
		}
		
		//마지막 cart_seq 가져오기
		@RequestMapping("/cart/lastId")
		@ResponseBody
		public String lastId(String user_seq) throws Exception{		
			return cdao.last_seq(user_seq);
		}
	
}
