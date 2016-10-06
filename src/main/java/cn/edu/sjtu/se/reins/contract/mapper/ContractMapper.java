package cn.edu.sjtu.se.reins.contract.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

public interface ContractMapper {

	List<Map<String, Object>> getDict(@Param("tableName") String tableName);

	void createContract(Map<String, Object> map);

	List<Map<String, Object>> getContracts();

	Map<String, Object> getContract(@Param("ContractID") int contractID);

	void createPayNode(Map<String, Object> map);
	void createReceiveNode(Map<String, Object> map);

	List<Map<String, Object>> getPayNodes(@Param("ContractID") int contractID);
	List<Map<String, Object>> getReceiveNodes(@Param("ContractID") int contractID);

	void updatePreRegisterContractManagerComments(Map<String, Object> map);
	void updatePreRegisterProjectManagerComments(Map<String, Object> map);
	void updateFormalRegisterContractManagerComments(Map<String, Object> map);
	void updateFormalRegisterProjectManagerComments(Map<String, Object> map);

	List<Map<String, Object>> getContractByState(@Param("State") int state);
	List<Map<String, Object>> getContractByStateAndOperator(@Param("State") int state, @Param("Operator") String operator);
	
	void updateContract(Map<String, Object> map);
	
	/**
	 * 按照ContractID和State筛选，按照PayDate升序排列，取出第一个付款节点
	 */
	Map<String, Object> getFirstPayNode(@Param("State") int state, @Param("ContractID") int contractID);
	void updatePayNodeState(@Param("State") int state, @Param("PayNodeID") int payNodeID);
	
	
	Map<String, Object> getFirstReceiveNode(@Param("State") int state, @Param("ContractID") int contractID);
	void updateReceiveNodeState(@Param("State") int state, @Param("ReceiveNodeID") int receiveNodeID);

	List<Map<String, Object>> getPayNodeByStateAndOperator(@Param("State") int state, @Param("Operator") String operator);
	List<Map<String, Object>> getReceiveNodeByStateAndOperator(@Param("State") int state, @Param("Operator") String operator);

	void updatePayNode(Map<String, Object> map);
	void updateReceiveNode(Map<String, Object> map);
	
}
