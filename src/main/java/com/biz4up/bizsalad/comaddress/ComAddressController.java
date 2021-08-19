package com.biz4up.bizsalad.comaddress;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;



@Controller
public class ComAddressController {
	@Autowired
	ComAddressDAO adao;
	
	@RequestMapping("/com/address/list.json")
	@ResponseBody
	public List<ComAddressVO> addrList(String company_seq) throws Exception{
		return adao.addressList2(company_seq);
	}
	
	@RequestMapping("/com/address/lastId")
	@ResponseBody
	public String lastId(String company_seq) throws Exception{		
		return adao.last_UA_seq(company_seq);
	}
	
	@RequestMapping("/com/address/Poplist")
	public String addrList(Model model, String company_seq) throws Exception{
		model.addAttribute("list", adao.addressList2(company_seq));
		return "/company/address";
	}
	
	@RequestMapping(value="/com/address/insert", method=RequestMethod.POST)	 
	@ResponseBody
	public String addressInsert(ComAddressVO vo) throws Exception {		
		System.out.println(vo.toString());
		adao.insert(vo);
		return vo.toString();
	}
	
	@RequestMapping(value="/com/address/update", method=RequestMethod.POST)	 
	@ResponseBody
	public String addressUpdate(ComAddressVO vo) throws Exception {		
		System.out.println(vo.toString());
		adao.update(vo);
		return vo.toString();
	}
	
	@RequestMapping(value="/com/address/delete", method=RequestMethod.POST)	 
	@ResponseBody
	public void addressDelete(String com_address_seq) throws Exception {	
		adao.delete(com_address_seq);
	}
}
