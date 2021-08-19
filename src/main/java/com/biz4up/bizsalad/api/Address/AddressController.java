package com.biz4up.bizsalad.api.Address;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.biz4up.bizsalad.domain.UserAddressVO;
import com.biz4up.bizsalad.persistence.UserAddressDAO;

@Controller
public class AddressController {
	@Autowired
	UserAddressDAO adao;
	
	@RequestMapping("/address/list.json")
	@ResponseBody
	public List<UserAddressVO> addrList(String user_seq) throws Exception{
		return adao.addressList2(user_seq);
	}
	
	@RequestMapping("/address/lastId")
	@ResponseBody
	public String lastId(String user_seq) throws Exception{		
		return adao.last_UA_seq(user_seq);
	}
	
	@RequestMapping("/address/Poplist")
	public String addrList(Model model, String user_seq, int div) throws Exception{
		model.addAttribute("list", adao.addressList2(user_seq));
		model.addAttribute("div", div);
		return "/address/list";
	}
	
	@RequestMapping(value="/address/insert", method=RequestMethod.POST)	 
	@ResponseBody
	public String addressInsert(UserAddressVO vo) throws Exception {		
		System.out.println(vo.toString());
		adao.insert(vo);
		return vo.toString();
	}
	
	@RequestMapping(value="/address/update", method=RequestMethod.POST)	 
	@ResponseBody
	public String addressUpdate(UserAddressVO vo) throws Exception {		
		System.out.println(vo.toString());
		adao.update(vo);
		return vo.toString();
	}
	
	@RequestMapping(value="/address/delete", method=RequestMethod.POST)	 
	@ResponseBody
	public void addressDelete(String user_address_seq) throws Exception {	
		//adao.delete(user_address_seq);
	}
}
