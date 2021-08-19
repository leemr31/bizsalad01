package com.biz4up.bizsalad.persistence;

import java.util.List;

import com.biz4up.bizsalad.domain.UserAddressVO;

public interface UserAddressDAO {
	public List<UserAddressVO> addressList() throws Exception;
	public UserAddressVO read(String user_seq) throws Exception;
	public List<UserAddressVO> addressList2(String user_seq) throws Exception;
	public void insert(UserAddressVO vo) throws Exception;
	public String last_UA_seq(String user_seq) throws Exception;
	public void update(UserAddressVO vo) throws Exception;
	public void delete(String user_address_seq) throws Exception;
	
}
