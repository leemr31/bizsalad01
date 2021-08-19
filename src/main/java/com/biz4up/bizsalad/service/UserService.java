package com.biz4up.bizsalad.service;

import javax.servlet.http.HttpSession;

import com.biz4up.bizsalad.user.AcntVO;
import com.biz4up.bizsalad.user.CardVO;
import com.biz4up.bizsalad.user.UserInfoVO;
import com.biz4up.bizsalad.user.UserVO;

public interface UserService {

	public void insert(UserVO uvo) throws Exception;
	public void update(UserInfoVO ivo)throws Exception;
	public void acntpost(AcntVO vo,UserInfoVO ivo) throws Exception;
}
