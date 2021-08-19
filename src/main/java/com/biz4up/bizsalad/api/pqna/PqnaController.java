package com.biz4up.bizsalad.api.pqna;

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
import com.biz4up.bizsalad.domain.PqnaReplyVO;
import com.biz4up.bizsalad.domain.PqnaVO;
import com.biz4up.bizsalad.persistence.PqnaDAO;

@Controller
public class PqnaController {
	@Resource(name="uploadPath")
	String path;
	
	@Autowired
	PqnaDAO pdao;
	
	//글 읽기
	@RequestMapping("/pqna/read")
	public String read(String pqna_bbs_seq, Model model) throws Exception{
		model.addAttribute("vo", pdao.read(pqna_bbs_seq));
		return "/pqna/read";
	}
	
	@RequestMapping("/pqna/list.json")
	@ResponseBody
	public HashMap<String, Object> map(Criteria cri) throws Exception{
		HashMap<String, Object> map=new HashMap<>();
		cri.setPerPageNum(5);
		PageMaker pm=new PageMaker();
		pm.setCri(cri);
		pm.setTotalCount(pdao.totalCount(cri));
		map.put("list", pdao.list(cri));
		map.put("pm", pm);
		map.put("cri", cri);
		return map;
	}
	
	@RequestMapping("/pqna/list")
	public String list() {
		return "/pqna/list";
	}
	
	//인서트
	@RequestMapping("/pqna/insert")
	public String insert() {
		return "/pqna/insert";
	}
	
	@RequestMapping(value="/pqna/insert", method = RequestMethod.POST)
	   public String insert(MultipartHttpServletRequest multi, PqnaVO vo) throws Exception {
	      
		
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
	      pdao.insert(vo);
	      return "redirect:/pqna/list";
	   }
	
	//업데이트
	@RequestMapping(value="/pqna/update", method = RequestMethod.POST)
	   public String update(PqnaVO vo, MultipartHttpServletRequest multi) throws Exception {
		
		String pqna_bbs_seq = vo.getPqna_bbs_seq();
		
		PqnaVO oldVO = pdao.read(vo.getPqna_bbs_seq());
		
		
		MultipartFile file = multi.getFile("image");
	      
	      // 대표이미지가 있으면 업로드
	      if (!file.isEmpty()) {
	         String image = System.currentTimeMillis() + file.getOriginalFilename();
	         file.transferTo(new File(path + File.separator + image));
	         vo.setFile(image);
	         if(oldVO.getFile()!=null){
					new File(path + "/" + oldVO.getFile()).delete();
				}
			}else{
				vo.setFile(oldVO.getFile());
			}
	      
	      file=multi.getFile("image2");
	      if (!file.isEmpty()) {
	    	  String image = System.currentTimeMillis() + file.getOriginalFilename();
	         file.transferTo(new File(path + File.separator + image));
	         vo.setFile2(image);
	         if(oldVO.getFile2()!=null){
					new File(path + "/" + oldVO.getFile2()).delete();
				}
			}else{
				vo.setFile2(oldVO.getFile2());
	      }
	      
	      file=multi.getFile("image3");
	      if (!file.isEmpty()) {
	    	  String image = System.currentTimeMillis() + file.getOriginalFilename();
	         file.transferTo(new File(path + File.separator + image));
	         vo.setFile3(image);
	         if(oldVO.getFile3()!=null){
					new File(path + "/" + oldVO.getFile3()).delete();
				}
			}else{
				vo.setFile3(oldVO.getFile3());
	      }
	      file=multi.getFile("image4");
	      
	      if (!file.isEmpty()) {
	    	  String image = System.currentTimeMillis() + file.getOriginalFilename();
	         file.transferTo(new File(path + File.separator + image));
	         vo.setFile4(image);
	         if(oldVO.getFile4()!=null){
					new File(path + "/" + oldVO.getFile4()).delete();
				}
			}else{
				vo.setFile4(oldVO.getFile4());
	      }
	      
	      file=multi.getFile("image5");
	      if (!file.isEmpty()) {
	    	  String image = System.currentTimeMillis() + file.getOriginalFilename();
	         file.transferTo(new File(path + File.separator + image));
	         vo.setFile5(image);
	         if(oldVO.getFile5()!=null){
					new File(path + "/" + oldVO.getFile5()).delete();
				}
			}else{
				vo.setFile5(oldVO.getFile5());
	      }
	      
	      pdao.update(vo);
	      return "redirect:/pqna/read?pqna_bbs_seq="+pqna_bbs_seq;
	   }
	
		//삭제
	@RequestMapping(value="/pqna/delete", method=RequestMethod.POST)
	public String delete(String pqna_bbs_seq) throws Exception {
		   PqnaVO vo = pdao.read(pqna_bbs_seq);
		   
	      // 대표이미지가 있으면 업로드
	         if(vo.getFile()!=null){
					new File(path + "/" + vo.getFile()).delete();
			}
	         else if(vo.getFile2()!=null){
					new File(path + "/" + vo.getFile2()).delete();
			}
	         else if(vo.getFile3()!=null){
					new File(path + "/" + vo.getFile3()).delete();
			}
	         else if(vo.getFile4()!=null){
					new File(path + "/" + vo.getFile4()).delete();
			}
	         else if(vo.getFile5()!=null){
					new File(path + "/" + vo.getFile5()).delete();
			}
	         
		
		pdao.delete(pqna_bbs_seq);
		return "redirect:/pqna/list";
	}
	
	//댓글 제이손
	@RequestMapping("/pqna/reply.json")
	@ResponseBody
	public HashMap<String, Object> list(String pqna_bbs_seq) throws Exception{
		HashMap<String, Object> map = new HashMap<String, Object>();		
		map.put("replyList", pdao.replyList(pqna_bbs_seq));
		return map;
	}
	
	//댓글 입력
	@RequestMapping(value="/pqna/replyInsert", method=RequestMethod.POST)
	@ResponseBody
	public void replyInsert(PqnaReplyVO vo) throws Exception{
		pdao.replyInsert(vo);
	}
	
	//댓글 삭제
	@RequestMapping(value="/pqna/replyDelete")
	@ResponseBody
	public void replyDelete(String pqna_bbs_reply_seq) throws Exception{
		pdao.replyDelete(pqna_bbs_reply_seq);
	}
}
