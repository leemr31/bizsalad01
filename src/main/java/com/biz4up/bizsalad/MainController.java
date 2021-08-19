package com.biz4up.bizsalad;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.biz4up.bizsalad.admin.AdminVO;




@Controller
public class MainController {

    @RequestMapping(value="/")
    public String main() {
   	
        return "index";
    }

 
    @RequestMapping(value="/company")
    public String com() {
   	
        return "company";
    }
    
    
    @RequestMapping(value="/admin")
    public String admin(AdminVO avo, Model model) {
    	
    	//avo = new AdminVO(1,"홍길동","텍스트");
    	//model.addAttribute("avo", avo);
    	
        return "admin";
    }
    
    @RequestMapping(value="/faq")
    public String faq() {
   	
        return "faq/user";
    }
    
    @RequestMapping(value="/company/faq")
    public String faqc() {
   	
        return "faq/company";
    }
    
    @RequestMapping(value="/about")
    public String about() {
   	
        return "about";
    }
    
}