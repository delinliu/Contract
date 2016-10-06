package cn.edu.sjtu.se.reins.contract.service;

import java.util.List;
import java.util.Map;

public interface ContractService {

	List<Map<String, Object>> getDict(String tableName);

	Map<String, Object> createContract(Map<String, Object> map) throws Exception;
	void registerContract(Map<String, Object> map) throws Exception;
	
	List<Map<String, Object>> getContracts();

	List<Map<String, Object>> getVerifyContracts() throws Exception;
	List<Map<String, Object>> getRegisterContracts() throws Exception;
	List<Map<String, Object>> getExecuteContracts() throws Exception;

	Map<String, Object> getContract(int contractID);
	
	void commentContract(Map<String, Object> map) throws Exception;

	void executePay(Map<String, Object> map) throws Exception;
	void executeReceive(Map<String, Object> map) throws Exception;
}