package com.biz4up.bizsalad.api.pqna;

import java.io.File;
import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

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
import com.biz4up.bizsalad.domain.ReportReplyVO;
import com.biz4up.bizsalad.domain.ReportVO;
import com.biz4up.bizsalad.persistence.ReportDAO;

@Controller
public class ReportController {
	@Resource(name="uploadPath")
	String path;
	
	@Autowired
	ReportDAO dao;
	
	//신고글 type(처리 여부) 업데이트
	@RequestMapping(value="/report/updateType", method = RequestMethod.POST)
	public void updateType(ReportVO vo) throws Exception{
		dao.updateType(vo);
	}
	
	//글 읽기
	@RequestMapping("/report/read")
	public String read(String rp_bbs_seq, Model model, HttpSession session) throws Exception{
		model.addAttribute("vo", dao.read(rp_bbs_seq));
		model.addAttribute("user_seq", session.getAttribute("user_seq"));
		model.addAttribute("company_seq", session.getAttribute("company_seq"));
		return "/report/report_read";
	}
	
	@RequestMapping("/report/list.json")
	@ResponseBody
	public HashMap<String, Object> map(Criteria cri) throws Exception{
		HashMap<String, Object> map=new HashMap<>();
		cri.setPerPageNum(5);
		PageMaker pm=new PageMaker();
		pm.setCri(cri);
		pm.setTotalCount(dao.totalCount(cri));
		map.put("list", dao.list(cri));
		map.put("pm", pm);
		map.put("cri", cri);
		return map;
	}
	
	@RequestMapping("/report/list")
	public String list(HttpSession session, Model model) {
		model.addAttribute("user_seq", session.getAttribute("user_seq"));
		return "/report/report_list";
	}
	
	//인서트
	@RequestMapping("/report/insert")
	public String insert() {
		return "/report/report_insert";
	}
	
	@RequestMapping(value="/report/insert", method = RequestMethod.POST)
	   public String insert(MultipartHttpServletRequest multi, ReportVO vo) throws Exception {
	      
		
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
	      return "redirect:/report/list";
	   }
	
	//업데이트
	@RequestMapping(value="/report/update", method = RequestMethod.POST)
	   public String update(ReportVO vo, MultipartHttpServletRequest multi) throws Exception {
		
		String rp_bbs_seq = vo.getRp_bbs_seq();
		
		ReportVO oldVO = dao.read(vo.getRp_bbs_seq());
	
		
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
	      
	      dao.update(vo);
	      return "redirect:/report/read?rp_bbs_seq="+rp_bbs_seq;
	   }
	
		//////////////삭제///////////////
	@RequestMapping(value="/report/delete", method=RequestMethod.POST)
	public String delete(MultipartHttpServletRequest multi, String rp_bbs_seq) throws Exception {
		ReportVO vo = dao.read(rp_bbs_seq);
		   
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
	         
		dao.delete(rp_bbs_seq);
		return "redirect:/report/list";
	}
	
		//댓글 제이손
		@RequestMapping("/report/reply.json")
		@ResponseBody
		public HashMap<String, Object> list(String rp_bbs_seq) throws Exception{
			HashMap<String, Object> map = new HashMap<String, Object>();		
			map.put("replyList", dao.replyList(rp_bbs_seq));
			return map;
		}
		
		//댓글 입력
		@RequestMapping(value="/report/replyInsert", method=RequestMethod.POST)
		@ResponseBody
		public void replyInsert(ReportReplyVO vo) throws Exception{
			dao.replyInsert(vo);
		}
		
		//댓글 삭제
		@RequestMapping(value="/report/replyDelete")
		@ResponseBody
		public void replyDelete(String rp_reply_seq) throws Exception{
			dao.replyDelete(rp_reply_seq);
		}
}
