package cn.edu.sjtu.se.reins.contract.service;

import java.util.List;
import java.util.Map;

public interface ContractService {

	/**
	 * 创建一个合同表（只填写预登记的内容A2~A17）
	 * @param map
	 * @return
	 * @throws Exception
	 */
	Map<String, Object> createContract(Map<String, Object> map) throws Exception;
	
	/**
	 * 正式登记一个合同表（填写A1~A23）
	 * @param map
	 * @throws Exception
	 */
	void registerContract(Map<String, Object> map) throws Exception;
	
	/**
	 * 获取所有的合同表（这个接口以后会停用，因为需要做分页和筛选）
	 * @return
	 */
	List<Map<String, Object>> getContracts();

	/**
	 * 针对当前登录的管理员（合同管理员和项目分管领导），获取等待他审批的所有合同（包括预审批、正式审批、付款收款审批）
	 * @return
	 * @throws Exception
	 */
	List<Map<String, Object>> getVerifyContracts() throws Exception;
	
	/**
	 * 针对当前登录的管理员（合同经办人），获取等待他正式登记的所有合同
	 * @return
	 * @throws Exception
	 */
	List<Map<String, Object>> getRegisterContracts() throws Exception;
	
	/**
	 * 针对当前登录的管理员（合同经办人），获取等待他执行的所有合同（付款节点与收款节点的执行）
	 * @return
	 * @throws Exception
	 */
	List<Map<String, Object>> getExecuteContracts() throws Exception;

	/**
	 * 根据ID查询合同表（包括基本信息和付款收款节点）
	 * @param contractID
	 * @return
	 */
	Map<String, Object> getContract(int contractID);
	
	/**
	 * 管理员（合同管理员和项目分管领导）审核一个合同（包括预审批、正式审批、付款收款审批）
	 * @param map
	 * @throws Exception
	 */
	void commentContract(Map<String, Object> map) throws Exception;

	/**
	 * 管理员（合同经办人）执行一个付款节点
	 * @param map
	 * @throws Exception
	 */
	void executePay(Map<String, Object> map) throws Exception;
	
	/**
	 * 管理员（合同经办人）执行一个收款节点
	 * @param map
	 * @throws Exception
	 */
	void executeReceive(Map<String, Object> map) throws Exception;
	
	/**
	 * 查询合同，分页、筛选、排序
	 * @param map
	 * @return
	 * @throws Exception
	 */
	Map<String, Object> search(Map<String, Object> map) throws Exception;
	
}