package com.biz4up.bizsalad.api.order;

import java.io.FileInputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.IOUtils;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.biz4up.bizsalad.domain.AccountVO;
import com.biz4up.bizsalad.domain.Criteria;
import com.biz4up.bizsalad.domain.FacReviewVO;
import com.biz4up.bizsalad.domain.FactualReplyVO;
import com.biz4up.bizsalad.domain.KongjeongVO;
import com.biz4up.bizsalad.domain.OptionContentVO;
import com.biz4up.bizsalad.domain.OrderTableVO;
import com.biz4up.bizsalad.domain.PageMaker;
import com.biz4up.bizsalad.domain.PurchaseTableVO;
import com.biz4up.bizsalad.domain.ReviewVO;
import com.biz4up.bizsalad.domain.UserCardVO;
import com.biz4up.bizsalad.persistence.CartDAO;
import com.biz4up.bizsalad.persistence.OptionDAO;
import com.biz4up.bizsalad.persistence.OrderDAO;
import com.biz4up.bizsalad.persistence.UserAddressDAO;
import com.biz4up.bizsalad.persistence.UserInfoDAO;

@Controller
public class OrderController {
	@Resource(name="uploadPath") // servlet-context에서 새로 등록한 업로드 루트의 내용을 불러온다
	String path;	//path라는 변수명으로 소환함
	
	@Autowired
	OrderDAO oDao;
	@Autowired
	OptionDAO opDao;
	@Autowired
	CartDAO cDao;
	@Autowired
	UserInfoDAO uDao;
	@Autowired
	UserAddressDAO aDao;
	
	
		//이미지 출력 
		@ResponseBody //실제 이미지가 리턴될거라서
		@RequestMapping("/displayFile")
		public byte[] display(String fullName)throws Exception{
			FileInputStream in = new FileInputStream(path + "/" + fullName);	//읽어들임
			byte[] image = IOUtils.toByteArray(in);
			in.close();
			return image;
		}
	
		//특정 공정 VO를 읽어오는 내용 
		@RequestMapping("/optionread")
		@ResponseBody
		public ArrayList<OptionContentVO> optionRead(String cart01) throws Exception{
			OptionContentVO vo=opDao.read(cart01);
			
			ArrayList<OptionContentVO> arrl = new ArrayList<>();
			arrl.add(vo);
			System.out.println("..."+vo);
			return arrl;
		}
		//특정 공정 작업 결과의 댓글내용을 읽어오는 내용 
				@RequestMapping("/readfactualreply")
				@ResponseBody
				public ArrayList<FactualReplyVO> readFactualReply(String fr_bbs_seq) throws Exception{
					FactualReplyVO vo=opDao.readFactualReply(fr_bbs_seq);
					ArrayList<FactualReplyVO> arrl = new ArrayList<>();
					arrl.add(vo);
					System.out.println(vo);
					return arrl;
				}
				//특정 공정 작업 결과를 읽어오는 내용 
				@RequestMapping("/facreviewread")
				@ResponseBody
				public ArrayList<FacReviewVO> facreviewRead(String option_seq) throws Exception{
					FacReviewVO vo=opDao.readFacReview(option_seq);
					
					ArrayList<FacReviewVO> arrl = new ArrayList<>();
					arrl.add(vo);
					System.out.println(vo);
					return arrl;
				}
		//cart 테이블에서 cart_desc필드를 json으로 읽어오는 내용
				@RequestMapping("/cartdescread")
				@ResponseBody
				public ArrayList<JSONObject> cartdescread(String cart_seq)throws Exception{
					ArrayList<JSONObject> arrl = new ArrayList<>();
					//JSONArray jArray=new JSONArray();
					String array=opDao.cartdescread(cart_seq);
					//System.out.println("array :"+array);
					
					try {
						array = array.replace('"', '\"');
						JSONParser parser = new JSONParser();
						Object obj = null;
						obj = parser.parse(array);
						JSONObject jsonObj = (JSONObject) obj;
						//System.out.println(jsonObj);
						//System.out.println(jsonObj.get("comment"));
						arrl.add(jsonObj);
						} catch (ParseException e) {
						 e.printStackTrace();
						}
					
					return arrl;
				}		
		//특정 공정 VO에서 cart_option 필드를 json으로 읽어오는 내용
		@RequestMapping("/cart_option")
		@ResponseBody
		public ArrayList<JSONObject> cartOption(String cart01)throws Exception{
			ArrayList<JSONObject> arrl = new ArrayList<>();
			//JSONArray jArray=new JSONArray();
			String array=opDao.readinto(cart01);
			//System.out.println("array :"+array);
			
			try {
				array = array.replace('"', '\"');
				JSONParser parser = new JSONParser();
				Object obj = null;
				obj = parser.parse(array);
				JSONObject jsonObj = (JSONObject) obj;
				//System.out.println(jsonObj);
				//System.out.println(jsonObj.get("name"));
				arrl.add(jsonObj);
				} catch (ParseException e) {
				 e.printStackTrace();
				}
			
			return arrl;
		}		
		
	 	@RequestMapping(value="/kongjeong")
	    public String kongjeong()throws Exception {
	    	
	    	return "kongjeong";
	    }
	 	@RequestMapping("kongjeong.json")
	 	@ResponseBody
	    public HashMap<String, Object> kongjeongJson(Criteria cri, String user_seq)throws Exception{
	 		HashMap<String,Object> map=new HashMap<String,Object>();
	 			cri.setPerPageNum(5);	//먼저 적용하고 list에 넣기	
	 			map.put("list", oDao.list(cri));
	 			PageMaker pm=new PageMaker();
		 		pm.setCri(cri);
		    	pm.setTotalCount(oDao.totalCount(cri));
		    	map.put("cri", cri);
				map.put("pm",pm);
				//System.out.println(oDao.list(cri));
				//System.out.println(pm.getTotalCount());
	 		return map;
	    }
	 	
	 	@RequestMapping(value="/pms") //20210715 김추석
	    public String pms()throws Exception {
	    	
	    	return "pms";
	    }
	 	@RequestMapping("pms.json") //20210715 김추석
	 	@ResponseBody
	    public HashMap<String, Object> pmsJson(Criteria cri)throws Exception{
	 		HashMap<String,Object> map=new HashMap<String,Object>();
	 			cri.setPerPageNum(10);	//먼저 적용하고 list에 넣기	
	 			map.put("list", oDao.list_pms(cri));
	 			PageMaker pm=new PageMaker();
		 		pm.setCri(cri);
		    	pm.setTotalCount(oDao.totalCount(cri));
		    	map.put("cri", cri);
				map.put("pm",pm);
				//System.out.println(oDao.list(cri));
				//System.out.println(pm.getTotalCount());
	 		return map;
	    }
	 	
	    @RequestMapping("/read")
		public String read(String oseq, Model model)throws Exception{
	    	model.addAttribute("vo",oDao.read(oseq));
			System.out.println(oDao.read(oseq));
			
			return "/order/read";
		}
	    @RequestMapping("/read_jeongsan")
		public String read_jeongsan(String oseq, Model model)throws Exception{
	    	model.addAttribute("vo",oDao.read(oseq));
			System.out.println(oDao.read(oseq));
			
			return "/order/read_jeongsan";
		}
	    @RequestMapping("/read2")
		public String read2(String order_seq, Model model)throws Exception{
			model.addAttribute("vo",oDao.read2(order_seq));
			System.out.println(oDao.read2(order_seq));
			return "/order/read2";
		}
	    
	    @RequestMapping("/review")
		public String review(String oseq, Model model)throws Exception{
			model.addAttribute("vo",oDao.read(oseq));
			KongjeongVO vo=oDao.read(oseq);
			String purchase_seq=vo.getPurchase_seq();
			model.addAttribute("rvo",opDao.readReview(purchase_seq));
			
			return "/order/review";
		}
	    @RequestMapping("/order/list")	//보완 필요
	    @ResponseBody
	    public void orderList(Model model)throws Exception {
	    	Criteria cri=new Criteria();
	    	oDao.list(cri); 
	    }
	    @RequestMapping(value="/insertReview", method=RequestMethod.POST)
	    public void insertReview(ReviewVO vo){
			System.out.println(vo.toString());
			opDao.insertReview(vo);	
		}
	    @RequestMapping(value="/facreviewreply", method=RequestMethod.POST)
	    public void facreviewreply(String fr_bbs_seq, String contents){
	    	HashMap<String, Object> map=new HashMap<>();
	    	map.put("fr_bbs_seq", fr_bbs_seq);
	    	map.put("contents", contents);
			opDao.facreviewreply(map);
			System.out.println(map);
		}
	    
	    
	    ///
	    
	    @RequestMapping("/order/insert")
		public String insert(Model model, HttpSession session, String cart_seq) throws Exception {  	
			String user_seq = (String) session.getAttribute("user_seq");
	    	model.addAttribute("userInfo", uDao.read(user_seq));
			model.addAttribute("avo", aDao.read(user_seq));
			model.addAttribute("cvo", cDao.cartRead(cart_seq));
			System.out.println("avo"+aDao.read(user_seq));
			System.out.println("cvo"+cDao.cartList(user_seq));
			return "/order/insert";		
		}
		
		@RequestMapping(value="/order/insertOrder", method=RequestMethod.POST)
		@ResponseBody
		public String orderInsert(OrderTableVO vo) throws Exception {
			System.out.println(vo.toString());
			oDao.orderInsert(vo);
			return vo.toString();
		}

		@RequestMapping(value="/order/insertPurchase", method=RequestMethod.POST)
		@ResponseBody
		public HashMap<String,Object> purchaseInsert(PurchaseTableVO vo) throws Exception {  	
			HashMap<String,Object> map = new HashMap<String,Object>();
			vo.setPurchase_seq("purc_0000000005");
			System.out.println(vo.toString());
			map.put("purchase_seq", vo.getPurchase_seq());
			oDao.purchaseInsert(vo);
			return map;
		}
		
		@RequestMapping("/order/card.json")
		@ResponseBody
		public List<UserCardVO> card(String user_seq) throws Exception{
			return oDao.card(user_seq);
		}
		
		@RequestMapping("/order/sample/card")
		public String sample_card(Model model, String user_seq) throws Exception {
			model.addAttribute("card", oDao.card(user_seq));
			return "/order/card";
		}
		
		@RequestMapping("/order/manufacture/card")
		public String manufacture_card(Model model, String user_seq) throws Exception {
			model.addAttribute("card", oDao.card(user_seq));
			return "/order/card";
		}
		
		@RequestMapping("/order/account.json")
		@ResponseBody
		public List<AccountVO> account(String user_seq) throws Exception{
			return oDao.account(user_seq);
		}
		
		@RequestMapping("/order/sample/account")
		public String sample_account(Model model, String user_seq) throws Exception {
			model.addAttribute("account", oDao.account(user_seq));
			return "/order/account";
		}
		
		@RequestMapping("/order/manufacture/account")
		public String manufacture_account(Model model, String user_seq) throws Exception {
			model.addAttribute("account", oDao.account(user_seq));
			return "/order/account";
		}
		
		@RequestMapping(value="/order/update", method=RequestMethod.POST)
		@ResponseBody
		public String orderUpdate(OrderTableVO vo) throws Exception {
			oDao.update(vo);
			System.out.println(vo.toString());
			return "성공";
		}
		
		//0708 업데이트
		@RequestMapping("/order/sample/nonAccount")
		public String sample_non() throws Exception {
			
			return "/order/nonAccount";
		}
		
		@RequestMapping("/order/manufacture/nonAccount")
		public String manufacture_non() throws Exception {
			
			return "/order/nonAccount";
		}		
		
		@RequestMapping("/order/complete")
		public String complete() throws Exception {
			return "/order/complete";
		}
		
		
	    //이미래
		@RequestMapping("/order/list1.json")
		@ResponseBody
		public HashMap<String, Object> map(Criteria cri) throws Exception{
			HashMap<String, Object> map=new HashMap<>();
			cri.setPerPageNum(5);
			PageMaker pm=new PageMaker();
			pm.setCri(cri);
			//pm.setTotalCount(200);
			pm.setTotalCount(oDao.totalCount1(cri));
			map.put("list", oDao.order_list(cri));
			map.put("pm", pm);
			map.put("cri", cri);
			return map;
		}
		
		@RequestMapping(value="/order/list1")
	    public String orderlist() throws Exception {
	        return "order/orderlist";
	    }
		
		
		   /////////
      @RequestMapping("/order/lastId")
      @ResponseBody
      public String lastId() throws Exception{      
         return oDao.last_seq();
      }
      
      @RequestMapping("/order/purlastId")
      @ResponseBody
      public String lastPur(String user_seq) throws Exception{      
         return oDao.last_pur_seq(user_seq);
      }
}
