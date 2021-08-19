package com.biz4up.bizsalad.company;

import java.io.File;
import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.biz4up.bizsalad.domain.Criteria;
import com.biz4up.bizsalad.domain.PageMaker;
import com.biz4up.bizsalad.persistence.CompBalDAO;
import com.biz4up.bizsalad.persistence.CompanyDAO;
import com.biz4up.bizsalad.persistence.CompanyInfoDAO;
import com.biz4up.bizsalad.user.AcntVO;

@RequestMapping(value="/company")
@Controller
public class CompanyController {
	@Autowired
	CompanyInfoDAO idao;
	@Autowired
	CompanyDAO dao;
	@Autowired
	PasswordEncoder passwordEncoder;
	@Resource(name = "uploadPath")
	private String path;
	@Autowired
	CompBalDAO pDao;
	

	
	@GetMapping("/read")
	public String read(Model model,HttpSession session) throws Exception {
		String company_seq=(String) session.getAttribute("company_seq");
		model.addAttribute("ivo",idao.inforead(company_seq));
		model.addAttribute("pvo",idao.portread(company_seq));
		model.addAttribute("avo",idao.accountread(company_seq));
        return "/company/read";
    }
	
	@PostMapping("/read")
	public void readPost(MultipartHttpServletRequest multi,CompanyInfoVO ivo,CompanyPortVO pvo,AcntVO avo) throws Exception {
		MultipartFile file = multi.getFile("auth_img");
		// 대표이미지가 있으면 업로드
		if (!file.isEmpty()) {
			String image = System.currentTimeMillis() + file.getOriginalFilename();
			file.transferTo(new File(path + File.separator + image));
			pvo.setCompany_auth_img(image);
		}
		file=multi.getFile("port_file");
		if (!file.isEmpty()) {
			String portfile = System.currentTimeMillis() + file.getOriginalFilename();
			file.transferTo(new File(path + File.separator + portfile));
			pvo.setCompany_file(portfile);
		}
		System.out.println(avo.toString());
		idao.update(ivo);
		idao.accountupdate(avo);
		idao.portUpdate(pvo);
	}
	
	@GetMapping("/info")
	public String info() {
        return "/company/info";
    }

	
	@PostMapping("/info")
	public void infoPost(MultipartHttpServletRequest multi,CompanyInfoVO ivo,CompanyPortVO pvo,AcntVO avo) throws Exception {
		MultipartFile file = multi.getFile("auth_img");
		// 대표이미지가 있으면 업로드
		if (!file.isEmpty()) {
			String image = System.currentTimeMillis() + file.getOriginalFilename();
			file.transferTo(new File(path + File.separator + image));
			pvo.setCompany_auth_img(image);
		}
		file=multi.getFile("port_file");
		if (!file.isEmpty()) {
			String portfile = System.currentTimeMillis() + file.getOriginalFilename();
			file.transferTo(new File(path + File.separator + portfile));
			pvo.setCompany_file(portfile);
		}
		
		idao.update(ivo);
		idao.insertacnt(avo);
		idao.portUpdate(pvo);
	}
	
	@GetMapping("/login")
    public String login() {
        return "/company/login";
    }
	
	@GetMapping("/insert")
	public String insertJsp() {
		return "/company/insert";
	}
	
	@PostMapping("/insert")
	public void insertPost(CompanyVO vo) throws Exception  {
		
		String password=passwordEncoder.encode(vo.getCompany_pass());
		vo.setCompany_pass(password);
		vo.setCompany_platform_type("email");
		System.out.println(vo.toString());
		dao.insert(vo);
		CompanyInfoVO ivo=new CompanyInfoVO();
		ivo.setCompany_seq(dao.login(vo.getCompany_id()).getCompany_seq());
		idao.insert(ivo);
		idao.portInsert(ivo.getCompany_seq());
	}
	
	//이미래
	@RequestMapping(value="/ballist.json")
	@ResponseBody
	public HashMap<String, Object> map(Criteria cri) throws Exception{
    	HashMap<String, Object> map=new HashMap<>();
		PageMaker pm=new PageMaker();
		cri.setPerPageNum(10);
		pm.setCri(cri);
		pm.setTotalCount(pDao.totalCount(cri));
		//pm.setTotalCount(200);
		map.put("list", pDao.comp_bal_list(cri));
		map.put("pm", pm);
		map.put("cri", cri);
    	return map;
	}
	 
	@RequestMapping(value="/ballist")
	public String compbal_list(Model model, Criteria cri) throws Exception {
    	cri.setPerPageNum(5);
    	PageMaker pm=new PageMaker();
    	pm.setCri(cri);
    	pm.setTotalCount(pDao.totalCount(cri));
    	model.addAttribute("pm",pm);
    	model.addAttribute("cri",cri);
    	model.addAttribute("list", pDao.comp_bal_list(cri));
        return "company/ballist";
    }
	
	@GetMapping("/logout")
    public String clogout(HttpServletRequest request, HttpServletResponse response){
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();

        if(authentication != null){
            new SecurityContextLogoutHandler().logout(request,response,authentication);
        }
        return "redirect:/company";
    }
	
	
	@GetMapping("/updatepwd")
	public String updatepwd() { //20210719 thanksgv
		return "/company/updatepwd";
	}
	
	@PostMapping("/updatepwd")
	public void updatepwd(CompanyVO vo) throws Exception  { //20210719 thanksgv
		
		String password=passwordEncoder.encode(vo.getCompany_pass());
		vo.setCompany_pass(password);
		vo.setCompany_platform_type("email");
		System.out.println(vo.toString());
		dao.updatepwd(vo);

	}
	
}
