package com.biz4up.bizsalad.persistence;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.biz4up.bizsalad.user.AcntVO;
import com.biz4up.bizsalad.user.CardVO;
import com.biz4up.bizsalad.user.UserAddrVO;
import com.biz4up.bizsalad.user.UserInfoVO;


public interface UserInfoDAO {
	public void insert(String user_seq) throws Exception;
	public void update(UserInfoVO vo) throws Exception;
	public UserInfoVO read(String user_seq) throws Exception;
	public void insertacnt(AcntVO vo)throws Exception;
	public void updateacnt(AcntVO vo)throws Exception;
	public AcntVO readAcnt(String user_seq) throws Exception;

}
