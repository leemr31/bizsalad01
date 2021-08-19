package com.biz4up.bizsalad.comaddress;
import java.util.List;

public interface ComAddressDAO {
	public List<ComAddressVO> addressList() throws Exception;
	public ComAddressVO read(String company_seq) throws Exception;
	public List<ComAddressVO> addressList2(String company_seq) throws Exception;
	public void insert(ComAddressVO vo) throws Exception;
	public String last_UA_seq(String company_seq) throws Exception;
	public void update(ComAddressVO vo) throws Exception;
	public void delete(String com_address_seq) throws Exception;
	
}
