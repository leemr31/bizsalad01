package com.biz4up.bizsalad.card;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.biz4up.bizsalad.persistence.CardDAO;
import com.biz4up.bizsalad.user.CardVO;

@RequestMapping("/card")
@Controller
public class CardController {
	@Autowired
	CardDAO dao;

	@PostMapping("/insert")
	public void insert(CardVO vo) throws Exception {
		dao.insert(vo);
	}

	@PostMapping("/delete")
	public void delete(String user_card_seq) throws Exception{
		dao.delete(user_card_seq);

	}

	@PostMapping("/update")
	public void update(CardVO vo) throws Exception{
		dao.update(vo);
		
	}

	@GetMapping("/list")
	public String listjsp() {
		return "/card/list";
	}

}
