package com.biz4up.bizsalad.persistence;

import java.util.List;

import com.biz4up.bizsalad.user.AcntVO;
import com.biz4up.bizsalad.user.CardVO;
import com.biz4up.bizsalad.user.UserVO;

public interface UserDAO {
	public void update(UserVO vo) throws Exception;

	public List<UserVO> list() throws Exception;

	public UserVO login(String uid) throws Exception;

	public void insert(UserVO vo) throws Exception;
	
	public void updatepwd(UserVO vo) throws Exception; //20210719 thanksgv

	public void delete(String user_seq) throws Exception;



}
