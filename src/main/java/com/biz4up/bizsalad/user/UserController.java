package com.biz4up.bizsalad.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.session.Session;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.biz4up.bizsalad.persistence.UserDAO;
import com.biz4up.bizsalad.persistence.UserInfoDAO;
import com.biz4up.bizsalad.service.UserService;


@Controller
@RequestMapping("/user")
public class UserController {
	@Autowired
	UserDAO dao;
	@Autowired
	PasswordEncoder passwordEncoder;
	@Autowired
	UserInfoDAO idao;
	@Autowired
	UserService uservice;
	
	@PostMapping("/acnt")
	public String acntpost(AcntVO vo,UserInfoVO ivo, HttpSession session) throws Exception {
		uservice.acntpost(vo, ivo);
		
		
		return "redirect:read";
		
	}
	@PostMapping("/read")
	public String readpost(UserInfoVO ivo, HttpSession session) throws Exception {
		uservice.update(ivo);

		return "redirect:read";
	}
	
	
	@GetMapping("/read")
	public String readJsp(Model model,HttpSession session) throws Exception {
		String seq=(String) session.getAttribute("user_seq");
		model.addAttribute("ivo",idao.read(seq));	
		model.addAttribute("avo",idao.readAcnt(seq));
		return "/user/read";
	}
	
	
	@GetMapping("/address")
	public String address() {
		return "/user/address";
	}
	@PostMapping("/info")
	public String infopost(UserInfoVO ivo, HttpSession session) throws Exception {
		uservice.update(ivo);
		
		return "redirect:read";
	}

	@GetMapping("/info")
	public String infoJsp() {
		return "/user/info";
	}

	
	@GetMapping("/insert")
	public String insertJsp() {
		return "/user/insert";
	}
	
	@PostMapping("/insert")
	public void insertPost(UserVO vo) throws Exception  {
		vo.setUser_pass(passwordEncoder.encode(vo.getUser_pass()));
		vo.setUser_platform_type("email");
		uservice.insert(vo);
	}
	
	@GetMapping("/login")
	public String loginJsp() {

		return "/user/login";
	}
	
	@GetMapping("/logout")
    public String logout(HttpServletRequest request, HttpServletResponse response){
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();

        if(authentication != null){
            new SecurityContextLogoutHandler().logout(request,response,authentication);
        }
        return "redirect:/";
    }
	
	@GetMapping("/mypage")
	public String mypage() {

		return "/user/mypage";
	}
	
	@GetMapping("/email")
	public String email() {

		return "/user/email";
	}

	@GetMapping("/updatepwd")
	public String updatepwd() { //20210719 thanksgv
		return "/user/updatepwd";
	}
	
	@PostMapping("/updatepwd")
	public void updatepwd(UserVO vo) throws Exception  { //20210719 thanksgv
		vo.setUser_pass(passwordEncoder.encode(vo.getUser_pass()));
		vo.setUser_platform_type("email");
		dao.updatepwd(vo);
	}
	
	@GetMapping("/updatepwdpop")
	public String updatepwdp() { //20210719 thanksgv
		return "/user/updatepwdpop";
	}

	@GetMapping("/basket")
	public String basket() { //20210720 thanksgv
		return "/user/basket";
	}
}
