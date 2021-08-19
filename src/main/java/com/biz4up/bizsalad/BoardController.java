package com.biz4up.bizsalad;

import java.io.File;
import java.util.HashMap;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.biz4up.bizsalad.domain.Criteria;
import com.biz4up.bizsalad.domain.PageMaker;
import com.biz4up.bizsalad.persistence.BoardDAO;

@Controller
@RequestMapping("/board/")
public class BoardController {
	@Resource(name="uploadPath")
	String path;
	@Autowired
	BoardDAO dao;
	
	@RequestMapping("read")
	public String read(String user_seq,Model model) throws Exception{
		model.addAttribute("vo", dao.read(user_seq));
		return "/board/read";
	}
	@RequestMapping("list")
	public String list() throws Exception{
		return "/board/list";
	}
	@RequestMapping("list.json")
	   @ResponseBody
	   public HashMap<String, Object> listJSON(Criteria cri) throws Exception{
	      HashMap<String, Object> map=new HashMap<String, Object>();      
	      cri.setPerPageNum(5);
	      map.put("listJSON", dao.listJSON(cri));
	      
	      PageMaker pm=new PageMaker();
	      pm.setCri(cri);
	      pm.setTotalCount(dao.totalCount(cri));
	      
	      map.put("cri", cri);
	      map.put("pm", pm);
	     
	      return map;  
	   }
}
