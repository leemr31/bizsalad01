package com.biz4up.bizsalad.service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.biz4up.bizsalad.persistence.UserDAO;
import com.biz4up.bizsalad.persistence.UserInfoDAO;
import com.biz4up.bizsalad.user.AcntVO;
import com.biz4up.bizsalad.user.CardVO;
import com.biz4up.bizsalad.user.UserInfoVO;
import com.biz4up.bizsalad.user.UserVO;

@Service
public class UserServiceImpl implements UserService {
	@Autowired
	UserDAO dao;
	@Autowired
	PasswordEncoder passwordEncoder;
	@Autowired
	UserInfoDAO idao;

	@Transactional
	@Override
	public void insert(UserVO uvo) throws Exception {
		dao.insert(uvo);
		String user_seq=dao.login(uvo.getUser_id()).getUser_seq();
		idao.insert(user_seq);
		AcntVO vo=new AcntVO();
		vo.setAccount_bank_name("temp");
		vo.setAccount_bank_number("");
		vo.setUser_seq(user_seq);
		vo.setAccount_name("temp");
		idao.insertacnt(vo);

	}
	
	
	   @Transactional
	   @Override
	   public void update(UserInfoVO ivo) throws Exception {
		  UserInfoVO tempIvo=idao.read(ivo.getUser_seq());
		  if(tempIvo.getUser_type()==0) {
			  ivo.setUser_type(1);
		  }else {
			  ivo.setUser_type(tempIvo.getUser_type());
		  }
	      idao.update(ivo);
	   }
	   
	   @Transactional
	   @Override
	   public void acntpost(AcntVO vo, UserInfoVO ivo) throws Exception {
	      ivo.setUser_type(1);
	      idao.update(ivo);
	      idao.updateacnt(vo);
	      
	   }


}
