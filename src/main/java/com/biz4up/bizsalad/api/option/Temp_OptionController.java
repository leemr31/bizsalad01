package com.biz4up.bizsalad.api.option;

import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.biz4up.bizsalad.domain.MaterialVO;
import com.biz4up.bizsalad.domain.Temp_OptionVO;
import com.biz4up.bizsalad.persistence.Temp_OptionDAO;

@Controller
public class Temp_OptionController {
	@Resource(name="uploadPath")
	String path;
	
	@Autowired
	Temp_OptionDAO opDao;
	
	//공정별 소재 목록 ajax
	@RequestMapping("/option/mlist.json")
	@ResponseBody
	public List<MaterialVO> mlist(String manufacture_seq) throws Exception{
		return opDao.mlist(manufacture_seq);
	}
	
	//1단계 화면 mapping
	@RequestMapping(value = "/option/insert1")
	public String order1() {

		return "/option/order1";
	}
	
	@RequestMapping(value = "/option/insert2")
	public String order2() {

		return "option/order2";
	}

	@RequestMapping(value = "/option/insert3")
	public String order3() {

		return "option/order3";
	}

	@RequestMapping(value = "/option/insert3(ring)")
	public String order3_ring() {

		return "option/order3(ring)";
	}
	
	@RequestMapping(value = "/option/insert3(ear)")
	public String order3_earRing() {

		return "option/order3(ear)";
	}
	
	@RequestMapping(value = "/option/insert4")
	public String order4() {

		return "option/order4";
	}
	
	@RequestMapping(value = "/option/insert4(ring)")
	public String order4_ring() {

		return "option/order4(ring)";
	}
	
	@RequestMapping(value = "/option/insert4(ear)")
	public String order4_earRing() {

		return "option/order4(ear)";
	}
	
	@RequestMapping(value = "/option/insert5")
	public String order5() {

		return "option/order5";
	}
	
	@RequestMapping(value = "/option/insert5(ring)")
	public String order5_ring() {

		return "option/order5(ring)";
	}
	
	@RequestMapping(value = "/option/insert5(ear)")
	public String order5_earRing() {

		return "option/order5(ear)";
	}
	
	@RequestMapping(value = "/option/insert6")
	public String order6() {

		return "option/order6";
	}
	
	@RequestMapping(value = "/option/insert6(ring)")
	public String order6_ring() {

		return "option/order6(ring)";
	}
	
	@RequestMapping(value = "/option/insert6(ear)")
	public String order6_earRing() {

		return "option/order6(ear)";
	}
	
	@RequestMapping(value = "/option/insert7")
	public String order7() {

		return "option/order7";
	}
	
	@RequestMapping(value = "/option/insert7(ear)")
	public String order7_earRing() {

		return "option/order7(ear)";
	}
	
	@RequestMapping(value = "/option/insert8")
	public String order8() {

		return "option/order8";
	}
	
	@RequestMapping(value = "/option/insert8(ear)")
	public String order8_earRing() {

		return "option/order8(ear)";
	}
	
	@RequestMapping(value = "/option/review")
	public String review() {

		return "option/review";
	}

	//인서트 (cart table에 1단계 업데이트 하는 건 CartController에 있음)
	@RequestMapping(value="/option/insert1", method=RequestMethod.POST)
	@ResponseBody
	public HashMap<String,Object> insert(Temp_OptionVO vo) throws Exception{
		HashMap<String,Object> map = new HashMap<String,Object>();
		opDao.insert(vo);
	
		System.out.println(vo.toString());
		return map;
	}
	
	//소재별 단가 구하는 mapping
	@RequestMapping("option/materialPrice.json")
	@ResponseBody
	public int materialPrice(String material_seq) throws Exception {
		return opDao.materialPrice(material_seq);
	}	
	
	//이미지 업로드
	@RequestMapping(value = "/option/uploadFile", method = {RequestMethod.POST,RequestMethod.GET})
	public  @ResponseBody Map<String,Object> uploadAjaxPost(MultipartHttpServletRequest request) throws Exception {
		Map<String,Object> map = new HashMap<String,Object>();
		
		List<MultipartFile> fileList = (List<MultipartFile>) request.getFiles("file");
		File target;
		int cnt = 1;
		String img = "img";
		
		for (MultipartFile mf : fileList) {			
			String savedName = System.currentTimeMillis() + "_" + mf.getOriginalFilename();
			target = new File(path, savedName);
			map.put(img+cnt, savedName);
			cnt++;
			FileCopyUtils.copy(mf.getBytes(), target);
		}
		
		return map;
		//System.out.println("img1:"+map.get("img1") + "img2:" + map.get("img2"));		
	}
	
	
	//인서트 된 옵션 시퀀스 가져오기
	//마지막 cart_seq 가져오기
		@RequestMapping("/option/lastId")
		@ResponseBody
		public String lastId(String cart_seq) throws Exception{		
			return opDao.last_seq(cart_seq);
		}
	
	//////////////////////////////////////////////////
	
	
	//System.out.print(file[1].getOriginalFilename());

	/*String savedName[] = new String[]{"","","","",""};
	MultipartFile[] file
	File target;
	int cnt = 0;
	
	String sName = "";

	for(MultipartFile fi:file)
		{
		savedName[cnt] = System.currentTimeMillis() + "_" + fi.getOriginalFilename();
		target = new File(path, savedName[cnt]);
		map.put("img1", savedName[0]);
		map.put("img2", savedName[0]);
		
		System.out.println(map.get("img2"));
		FileCopyUtils.copy(fi.getBytes(), target);
		
		
		
	
		//cnt++;			
		}
	*/
	/*sName = "'{"+"'img1':"+"'"+savedName[0]+"',"
			+"'img2':"+"'"+savedName[1]+"',"
			+"'img3':"+"'"+savedName[2]+"',"
			+"'img4':"+"'"+savedName[3]+"',"
			+"'img5':"+"'"+savedName[4]+"'"+"}'";
	*/
	/*
	savedName[0] = System.currentTimeMillis() + "_" + file[0].getOriginalFilename();
	target = new File(path, savedName[0]);
	FileCopyUtils.copy(file[0].getBytes(), target);
	
	savedName[1] = System.currentTimeMillis() + "_" + file[1].getOriginalFilename();
	target = new File(path, savedName[1]);
	FileCopyUtils.copy(file[1].getBytes(), target);
	*/	
}
