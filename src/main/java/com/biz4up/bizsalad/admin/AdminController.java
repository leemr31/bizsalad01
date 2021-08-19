package com.biz4up.bizsalad.admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.biz4up.bizsalad.domain.Criteria;
import com.biz4up.bizsalad.persistence.AdminDAO;

@Controller
@RequestMapping("/admin")
public class AdminController{
   
   @Autowired
   AdminDAO dao;
   
   @RequestMapping(value="/admin")
   public String admin(AdminVO avo, Model model,HttpSession session) {
     if(session.getAttribute("user_id")!=null) { // 21-08-19 유재환 수정
        if(!session.getAttribute("user_type").equals("3")) {
           return "redirect:/";
        }
     }
      
      //avo = new AdminVO(1,"홍길동","텍스트");
      //model.addAttribute("avo", avo);
      
       return "admin";
   }
    
    
    @RequestMapping("/test")
    public ModelAndView test() throws Exception { 
       ModelAndView mav = new ModelAndView("test"); 
       mav.addObject("name", "비즈샐러드");
       List<String> testList = new ArrayList<String>();
       testList.add("a");
       testList.add("b");
       testList.add("c");
       mav.addObject("list", testList);
       
       return mav; 
    }
    
   @GetMapping("/main")
   public String main() {

      return "/admin/main";
   }
   
   @GetMapping("/login")
   public String loginJsp() {

      return "/admin/login";
   }
    
   @GetMapping("/logout")
    public String logout(HttpServletRequest request, HttpServletResponse response,HttpSession session){
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();

      if(session.getAttribute("user_id")!=null) {
         if(session.getAttribute("user_type").equals(3)) {
              if(authentication != null){
                  new SecurityContextLogoutHandler().logout(request,response,authentication);
              }
              return "redirect:/admin";
         }
      }
      return "redirect:/";
    }


   @RequestMapping("/company")
   public String company(Model model,HttpSession session) throws Exception{
      model.addAttribute("company", dao.company());
      
      System.out.print(dao.company().toString());
      if(session.getAttribute("user_id")!=null) {
         if(session.getAttribute("user_type").equals("3")) {
            return "/admin/member_company";
         }else {
            return "redirect:/";
         }
      }else {
      }
      return "redirect:/";
   }
   
   @RequestMapping("/user")
   public String user(Model model,HttpSession session) throws Exception{
      model.addAttribute("user", dao.user());
      
      System.out.print(dao.company().toString());
      if(session.getAttribute("user_id")!=null) {
         if(session.getAttribute("user_type").equals("3")) {
            return "/admin/member_user";
         }
      }
      return "redirect:/";
   }
   
   @RequestMapping("/settle")
   public String settle(Model model,HttpSession session) throws Exception{
       model.addAttribute("settle", dao.settle());
       
       System.out.print(dao.settle().toString());
      if(session.getAttribute("user_id")!=null) {
         if(session.getAttribute("user_type").equals("3")) {
            return "/admin/etc_settle";
         }
      }
      return "redirect:/";
   }
   
   @RequestMapping("/product")
   public String product(Model model,HttpSession session) throws Exception{
      model.addAttribute("product", dao.product());
      
      System.out.print(dao.product().toString());
      if(session.getAttribute("user_id")!=null) {
         if(session.getAttribute("user_type").equals("3")) {
            return "/admin/etc_product";
         }
      }
      return "redirect:/";
   }
   
   @RequestMapping("/cate")
   public String cate(Model model,HttpSession session) throws Exception{
      model.addAttribute("cate", dao.cate());
      
      System.out.print(dao.cate().toString());
      if(session.getAttribute("user_id")!=null) {
         if(session.getAttribute("user_type").equals("3")) {
            return "/admin/etc_cate";
         }
      }
      return "redirect:/";
   }
   
   @RequestMapping("/inquiry")
   public String inquiry(Model model,HttpSession session) throws Exception{
      model.addAttribute("inquiry", dao.inquiry());
      
      System.out.print(dao.inquiry().toString());
      if(session.getAttribute("user_id")!=null) {
         if(session.getAttribute("user_type").equals("3")) {
            return "/admin/bbs_inquiry";
         }
      }
      return "redirect:/";
   }
   
   @RequestMapping("/qna")
   public String qna(Model model,HttpSession session) throws Exception{
      model.addAttribute("qna", dao.qna());
      
      System.out.print(dao.qna().toString());
      if(session.getAttribute("user_id")!=null) {
         if(session.getAttribute("user_type").equals("3")) {
            return "/admin/bbs_qna";
         }
      }
      return "redirect:/";
   }
   
   @RequestMapping("/tell")
   public String tell(Model model,HttpSession session) throws Exception{
      model.addAttribute("tell", dao.tell());
      
      System.out.print(dao.tell().toString());
      if(session.getAttribute("user_id")!=null) {
         if(session.getAttribute("user_type").equals("3")) {
            return "/admin/bbs_tell";
         }
      }
      return "redirect:/";
   }
   
   @RequestMapping("/notice")
   public String notice(Model model,HttpSession session) throws Exception{
      model.addAttribute("notice", dao.notice());
      
      System.out.print(dao.notice().toString());
      if(session.getAttribute("user_id")!=null) {
         if(session.getAttribute("user_type").equals("3")) {
            return "/admin/bbs_notice";
         }
      }
      return "redirect:/";
   }

   
   @RequestMapping("/review_done")
   public String review_done(Model model,HttpSession session) throws Exception{
      model.addAttribute("review_done", dao.review_done());
      
      System.out.print(dao.review_done().toString());
      if(session.getAttribute("user_id")!=null) {
         if(session.getAttribute("user_type").equals("3")) {
            return "/admin/review_done";
         }
      }
      return "redirect:/";
   }
   
   @RequestMapping("/review_process")
   public String review_process(Model model,HttpSession session) throws Exception{
      model.addAttribute("review_process", dao.review_process());
      
      System.out.print(dao.review_process().toString());
      if(session.getAttribute("user_id")!=null) {
         if(session.getAttribute("user_type").equals("3")) {
            return "/admin/review_process";
         }
      }
      return "redirect:/";
   }
   
   @RequestMapping("/review_product")
   public String review_product(Model model,HttpSession session) throws Exception{
      model.addAttribute("review_product", dao.review_product());
      
      System.out.print(dao.review_product().toString());
      if(session.getAttribute("user_id")!=null) {
         if(session.getAttribute("user_type").equals("3")) {
            return "/admin/review_product";
         }
      }
      return "redirect:/";
   }
   
   @RequestMapping("/banner_main")
   public String banner_main(Model model,HttpSession session) throws Exception{
      model.addAttribute("banner_main", dao.banner_main());
      
      System.out.print(dao.banner_main().toString());
      if(session.getAttribute("user_id")!=null) {
         if(session.getAttribute("user_type").equals("3")) {
            return "/admin/banner_main";
         }
      }
      return "redirect:/";
   }
   
   @RequestMapping("/banner_product")
   public String banner_product(Model model,HttpSession session) throws Exception{
      model.addAttribute("banner_product", dao.banner_product());
      
      System.out.print(dao.banner_product().toString());
      if(session.getAttribute("user_id")!=null) {
         if(session.getAttribute("user_type").equals("3")) {
            return "/admin/banner_product";
         }
      }
      return "redirect:/";
   }
   
   @RequestMapping("/banner_utube")
   public String banner_utube(Model model,HttpSession session) throws Exception{
      model.addAttribute("banner_utube", dao.banner_utube());
      
      System.out.print(dao.banner_utube().toString());
      if(session.getAttribute("user_id")!=null) {
         if(session.getAttribute("user_type").equals("3")) {
            return "/admin/banner_utube";
         }
      }
      return "redirect:/";
   }
   
   @RequestMapping("/banner_influ")
   public String banner_influ(Model model,HttpSession session) throws Exception{
      model.addAttribute("banner_influ", dao.banner_influ());
      
      System.out.print(dao.banner_influ().toString());
      if(session.getAttribute("user_id")!=null) {
         if(session.getAttribute("user_type").equals("3")) {
            return "/admin/banner_influ";
         }
      }
      return "redirect:/";
   }
   
   @RequestMapping("/banner_review")
   public String banner_review(Model model,HttpSession session) throws Exception{
      model.addAttribute("banner_review", dao.banner_review());
      
      System.out.print(dao.banner_review().toString());
      if(session.getAttribute("user_id")!=null) {
         if(session.getAttribute("user_type").equals("3")) {
            return "/admin/banner_review";
         }
      }
      return "redirect:/";
   }
   
    
}