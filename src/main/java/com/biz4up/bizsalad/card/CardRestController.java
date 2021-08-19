package com.biz4up.bizsalad.card;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.biz4up.bizsalad.persistence.CardDAO;
import com.biz4up.bizsalad.user.CardVO;

@RequestMapping("/card")
@RestController
public class CardRestController {
	@Autowired
	CardDAO dao;
	
	@GetMapping("/list.json")
	public List<CardVO> list(String user_seq) throws Exception {
		return dao.list(user_seq);

	}
}
