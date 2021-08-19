package com.biz4up.bizsalad.api.process;

import java.io.File;
import java.util.HashMap;

import javax.annotation.Resource;

import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.biz4up.bizsalad.domain.PageMaker;
import com.biz4up.bizsalad.domain.Criteria;
import com.biz4up.bizsalad.domain.FactualQnAVO;
import com.biz4up.bizsalad.domain.OrderVO;
import com.biz4up.bizsalad.persistence.ProcessDAO;

@Controller
@RequestMapping("/process/")
public class ProcessController{
	@Resource(name="uploadPath")
	String path;
	
	@Autowired
	ProcessDAO dao;
	
	@RequestMapping("company")
	public String company(Model model) throws Exception{
		model.addAttribute("company", dao.company());
		return "/process/company";
	}
	
	@RequestMapping("cart")
	public String cart(String option_seq, Model model) throws Exception{
		model.addAttribute("vo", dao.cart(option_seq));
		return "/process/cart";
	}
	
	@RequestMapping("read")
	public String read(String option_seq, Model model) throws Exception{
		model.addAttribute("vo", dao.read(option_seq));
		return "/process/read";
	}
	
	@RequestMapping(value = "update", method = RequestMethod.POST)
	public String update(OrderVO vo) throws Exception{
		
		//System.out.print(vo.toString());
		dao.update(vo);
		return "redirect:/process/list2?company_seq=" + vo.getCompany_seq();
	}
	@RequestMapping("list")
	public String list() throws Exception{
		return "/process/list";
	}
	
	@RequestMapping("list2")
	public String list2() throws Exception{
		return "/process/list2";
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
	
	@RequestMapping("image")
	public String image(Model model,String option_seq, String cart_seq) throws Exception {
		model.addAttribute("vo", dao.image(option_seq, cart_seq));
		return "/process/image";
	}
	
	@RequestMapping(value="insert", method = RequestMethod.POST)
	   public String insert(MultipartHttpServletRequest multi, FactualQnAVO vo) throws Exception {
	      MultipartFile file = multi.getFile("image");
	      
	      // 대표이미지가 있으면 업로드
	      if (!file.isEmpty()) {
	         String image = System.currentTimeMillis() + file.getOriginalFilename();
	         file.transferTo(new File(path + File.separator + image));
	         vo.setFile(image);
	         System.out.println(image);
	      }
	      file=multi.getFile("image2");
	      if (!file.isEmpty()) {
	    	  String image = System.currentTimeMillis() + file.getOriginalFilename();
	         file.transferTo(new File(path + File.separator + image));
	        vo.setFile2(image);
	      }
	      file=multi.getFile("image3");
	      if (!file.isEmpty()) {
	    	  String image = System.currentTimeMillis() + file.getOriginalFilename();
	         file.transferTo(new File(path + File.separator + image));
	        vo.setFile3(image);
	      }
	      file=multi.getFile("image4");
	      if (!file.isEmpty()) {
	    	  String image = System.currentTimeMillis() + file.getOriginalFilename();
	         file.transferTo(new File(path + File.separator + image));
	        vo.setFile4(image);
	      }
	      file=multi.getFile("image5");
	      if (!file.isEmpty()) {
	    	  String image = System.currentTimeMillis() + file.getOriginalFilename();
	         file.transferTo(new File(path + File.separator + image));
	        vo.setFile5(image);
	      }
	      dao.insert(vo);
	      return "redirect:/post/post?cart_seq=" + vo.getCart_seq() + "&company_seq=" + vo.getCompany_seq() + "&option_seq=" +vo.getOption_seq();
	   }
}
