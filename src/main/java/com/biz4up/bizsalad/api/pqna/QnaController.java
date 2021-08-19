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
import com.biz4up.bizsalad.domain.QnaReplyVO;
import com.biz4up.bizsalad.domain.QnaVO;
import com.biz4up.bizsalad.persistence.QnaDAO;

@Controller
public class QnaController {
	@Resource(name="uploadPath")
	String path;
	
	@Autowired
	QnaDAO dao;
	
	//글 읽기
	@RequestMapping("/qna/read")
	public String read(String qna_bbs_seq, Model model, HttpSession session) throws Exception{
		model.addAttribute("vo", dao.read(qna_bbs_seq));
		model.addAttribute("user_seq", session.getAttribute("user_seq"));
		return "/qna/read";
	}
	
	@RequestMapping("/qna/list.json")
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
	
	@RequestMapping("/qna/list")
	public String list() {
		return "/qna/list";
	}
	
	//인서트
	@RequestMapping("/qna/insert")
	public String insert() {
		return "/qna/insert";
	}
	
	@RequestMapping(value="/qna/insert", method = RequestMethod.POST)
	   public String insert(MultipartHttpServletRequest multi, QnaVO vo) throws Exception {
	      
		
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
	      return "redirect:/qna/list";
	   }
	
	//업데이트
	@RequestMapping(value="/qna/update", method = RequestMethod.POST)
	   public String update(QnaVO vo, MultipartHttpServletRequest multi) throws Exception {
		
		String qna_bbs_seq = vo.getQna_bbs_seq();
		
		QnaVO oldVO = dao.read(vo.getQna_bbs_seq());
		
		
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
	      return "redirect:/qna/read?qna_bbs_seq="+qna_bbs_seq;
	   }
	
		//////////////삭제///////////////
	@RequestMapping(value="/qna/delete", method=RequestMethod.POST)
	public String delete(MultipartHttpServletRequest multi, String qna_bbs_seq) throws Exception {
		QnaVO vo = dao.read(qna_bbs_seq);
		   
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
	         
		dao.delete(qna_bbs_seq);
		return "redirect:/qna/list";
	}
	
	//댓글 제이손
	@RequestMapping("/qna/reply.json")
	@ResponseBody
	public HashMap<String, Object> list(String qna_bbs_seq) throws Exception{
		HashMap<String, Object> map = new HashMap<String, Object>();		
		map.put("replyList", dao.replyList(qna_bbs_seq));
		return map;
	}
	
	//댓글 입력
	@RequestMapping(value="/qna/replyInsert", method=RequestMethod.POST)
	@ResponseBody
	public void replyInsert(QnaReplyVO vo) throws Exception{
		dao.replyInsert(vo);
	}
	
	//댓글 삭제
	@RequestMapping(value="/qna/replyDelete")
	@ResponseBody
	public void replyDelete(String qna_bbs_reply_seq) throws Exception{
		dao.replyDelete(qna_bbs_reply_seq);
	}
}
