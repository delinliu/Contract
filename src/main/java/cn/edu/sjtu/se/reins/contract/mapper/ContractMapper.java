package cn.edu.sjtu.se.reins.contract.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

public interface ContractMapper {

	/**
	 * 创建一个合同，会存储预登记的内容
	 * @param map
	 */
	void createContract(Map<String, Object> map);

	/**
	 * 获取所有合同（该接口之后会废弃）
	 * @return
	 */
	List<Map<String, Object>> getContracts();

	/**
	 * 根据ID获取合同
	 * @param contractID
	 * @return
	 */
	Map<String, Object> getContract(@Param("ContractID") int contractID);

	/**
	 * 以下2个接口：创建一个节点（付款或收款）
	 * @param map
	 */
	void createPayNode(Map<String, Object> map);
	void createReceiveNode(Map<String, Object> map);

	/**
	 * 以下2个接口：根据合同ID获取节点（付款或收款）
	 * @param contractID
	 * @return
	 */
	List<Map<String, Object>> getPayNodes(@Param("ContractID") int contractID);
	List<Map<String, Object>> getReceiveNodes(@Param("ContractID") int contractID);

	/**
	 * 以下4个接口：更新节点（付款或收款）的审核信息（合同管理员或项目分管领导），而且同时会更新合同状态
	 * @param map
	 */
	void updatePreRegisterContractManagerComments(Map<String, Object> map);
	void updatePreRegisterProjectManagerComments(Map<String, Object> map);
	void updateFormalRegisterContractManagerComments(Map<String, Object> map);
	void updateFormalRegisterProjectManagerComments(Map<String, Object> map);

	/**
	 * 按照合同状态取出所有合同
	 * @param state
	 * @return
	 */
	List<Map<String, Object>> getContractByState(@Param("State") int state);
	
	/**
	 * 按照合同状态和经办人，取出所有合同
	 * @param state
	 * @param operator
	 * @return
	 */
	List<Map<String, Object>> getContractByStateAndOperator(@Param("State") int state, @Param("Operator") String operator);
	
	/**
	 * 更新合同基本信息：（填写A1~A23）
	 * @param map
	 */
	void updateContract(Map<String, Object> map);
	
	/**
	 * 按照ContractID和State筛选，按照计划付款或收款日期升序排列，取出第一个节点
	 */
	Map<String, Object> getFirstPayNode(@Param("State") int state, @Param("ContractID") int contractID);
	Map<String, Object> getFirstReceiveNode(@Param("State") int state, @Param("ContractID") int contractID);
	
	/**
	 * 以下2个接口： 更新节点的状态
	 */
	void updatePayNodeState(@Param("State") int state, @Param("PayNodeID") int payNodeID);
	void updateReceiveNodeState(@Param("State") int state, @Param("ReceiveNodeID") int receiveNodeID);

	/**
	 * 以下2个接口：根据节点状态获取该经办人的所有节点（同时取出合同信息）。
	 * @param state
	 * @param operator
	 * @return
	 */
	List<Map<String, Object>> getPayNodeByStateAndOperator(@Param("State") int state, @Param("Operator") String operator);
	List<Map<String, Object>> getReceiveNodeByStateAndOperator(@Param("State") int state, @Param("Operator") String operator);

	/**
	 * 以下2个接口：更新节点（付款或收款）的执行信息（实际付款或收款金额等）
	 * @param map
	 */
	void updatePayNode(Map<String, Object> map);
	void updateReceiveNode(Map<String, Object> map);
	
	/**
	 * 根据state筛选出所有付款节点，同时查出对应的合同信息
	 * @param state
	 * @return
	 */
	List<Map<String, Object>> getPayNodesByState(@Param("State") int state);

	/**
	 * 根据state筛选出所有收款节点，同时查出对应的合同信息
	 * @param state
	 * @return
	 */
	List<Map<String, Object>> getReceiveNodesByState(@Param("State") int state);

	/**
	 * 以下4个接口：更新节点（付款或收款）的审核信息（合同管理员或项目分管领导）
	 * @param map
	 */
	void updatePayNodeContractManagerComments(Map<String, Object> map);
	void updatePayNodeProjectManagerComments(Map<String, Object> map);
	void updateReceiveNodeContractManagerComments(Map<String, Object> map);
	void updateReceiveNodeProjectManagerComments(Map<String, Object> map);
	
}
