package com.biz4up.bizsalad.api.post;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.biz4up.bizsalad.domain.OrderVO;
import com.biz4up.bizsalad.persistence.PostDAO;

@Controller
@RequestMapping("/post/")
public class PostController {
	@Autowired
	PostDAO dao;
	@RequestMapping("post")
	public String post(String cart_seq,String company_seq,String option_seq, Model model) throws Exception{
		model.addAttribute("vo", dao.post(cart_seq, company_seq, option_seq));
		return "/post/post";
	}
	@RequestMapping("post2")
	public String post(String cart_seq,int flow, Model model) throws Exception{
		model.addAttribute("vo", dao.post2(cart_seq, flow));
		return "/post/post2";
	}
	@RequestMapping("upost")
	public String upost(String cart_seq, Model model) throws Exception{
		model.addAttribute("vo", dao.upost(cart_seq));
		return "/post/upost";
	}
	@RequestMapping(value = "update", method = RequestMethod.POST)
	public String update(String option_seq) throws Exception{
		dao.update(option_seq);
		return "redirect:/process/company";
	}
	
}
