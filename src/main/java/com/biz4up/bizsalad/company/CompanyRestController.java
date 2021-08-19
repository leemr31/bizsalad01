package com.biz4up.bizsalad.company;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.biz4up.bizsalad.persistence.CompanyDAO;
import com.biz4up.bizsalad.persistence.CompanyInfoDAO;
import com.biz4up.bizsalad.persistence.UserDAO;

@RestController
@RequestMapping("/company")
public class CompanyRestController {
	@Autowired
	CompanyDAO dao;
	@Autowired
	CompanyInfoDAO idao;
	@Autowired
	PasswordEncoder passwordEncoder;

	@Resource(name = "uploadPath")
	private String path;


	@PostMapping("/loginapi")
	public HashMap<String, Object> loginPost(String company_id, String company_pass, HttpSession session,
			boolean chkLogin, HttpServletResponse response) throws Exception {
		HashMap<String, Object> map = new HashMap<>();
		String path = (String) session.getAttribute("path");
		String seq = "";
		int result = 0; // 계정 없음
		CompanyVO vo = dao.login(company_id);
		
		if (vo != null) {
			
			result = 1; // 계정있음
			if (passwordEncoder.matches(company_pass, vo.getCompany_pass())) {
				
				result = 2;
				
				session.setAttribute("company_id", vo.getCompany_id());
				session.setAttribute("company_seq", vo.getCompany_seq());
				session.setAttribute("company_name", vo.getCompany_name());
				session.setAttribute("company_type", vo.getCompany_type());
				session.setAttribute("manufact_01", vo.getManufact_01());
				
				System.out.print(vo.getCompany_id());
				System.out.print(vo.getCompany_seq());
				System.out.print(vo.getCompany_name());
				System.out.print(vo.getCompany_type());
				System.out.print(vo.getManufact_01());
				
				seq = (String) session.getAttribute("company_seq");
				
				if (chkLogin) {
					Cookie cookie = new Cookie("company_id", vo.getCompany_id());
					cookie.setPath("/");
					cookie.setMaxAge(60 * 60 * 24 * 7);
					response.addCookie(cookie);

				}

			}
		}
		map.put("path", path);
		map.put("result", result);
		map.put("seq", seq);
		return map;
	}

	@GetMapping(value = "/manulist", produces = " application/json;charset=UTF-8")
	public List<Map> manulist(HttpServletResponse response) throws Exception {

		return idao.manufactList();
	}

}
