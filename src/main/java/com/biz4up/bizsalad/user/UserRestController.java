package com.biz4up.bizsalad.user;

import java.util.HashMap;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.biz4up.bizsalad.persistence.UserDAO;

@RestController
@RequestMapping("/user")
public class UserRestController {
	@Autowired
	UserDAO dao;
	@Autowired
	PasswordEncoder passwordEncoder;
	
	@PostMapping("/loginapi")
	public HashMap<String, Object> loginPost(String user_id, String user_pass, HttpSession session, boolean chkLogin,
			HttpServletResponse response) throws Exception {
		
		HashMap<String, Object> map = new HashMap<>();
		String path = (String) session.getAttribute("path");
		int result = 0; // 계정 없음
		UserVO vo = dao.login(user_id);
		
		if (vo != null) {
			
			result = 1; // 계정있음
			
			if (passwordEncoder.matches(user_pass, vo.getUser_pass())) {
				
				result = 2;
				
				session.setAttribute("user_id", vo.getUser_id());
				session.setAttribute("user_seq", vo.getUser_seq());
				session.setAttribute("user_name", vo.getUser_name()); //이름추가 20210706
				session.setAttribute("user_type", vo.getUser_type()); //등급추가 20210706
				
				if (chkLogin) {
					
					Cookie cookie = new Cookie("user_id", vo.getUser_id());
					cookie.setPath("/");
					cookie.setMaxAge(60 * 60 * 24 * 7);
					response.addCookie(cookie);

				}

			}
			
			map.put("type", vo.getUser_type());
		}
		
		
		map.put("path", path);
		map.put("result", result);
		return map;
	}

}
