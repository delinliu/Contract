package cn.edu.sjtu.se.reins.contract.service.impl;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.edu.sjtu.se.reins.contract.mapper.ContractMapper;
import cn.edu.sjtu.se.reins.contract.service.ContractService;
import cn.edu.sjtu.se.reins.contract.util.Util;

@Service("contractServiceImpl")
public class ContractServiceImpl implements ContractService {

	@Autowired
	private ContractMapper contractMapper;

	@Override
	@Transactional(rollbackFor = Exception.class)
	public void executePay(Map<String, Object> map) throws Exception {
		int payNodeID = (int) map.get("PayNodeID");
		
		// 更新付款节点
		Map<String, Object> node = new HashMap<>();
		node.put("PayNodeID", payNodeID);
		node.put("ActualMoney", String.valueOf(map.get("ActualMoney")));
		node.put("ActualCurrency", Integer.parseInt(String.valueOf(map.get("ActualCurrency"))));
		node.put("PayType", Integer.parseInt(String.valueOf(map.get("PayType"))));
		node.put("IsCredentialFiled", Boolean.parseBoolean(String.valueOf(map.get("IsCredentialFiled"))));
		node.put("Composition", String.valueOf(map.get("Composition")));
		contractMapper.updatePayNode(node);
		
		// 更新付款节点状态
		contractMapper.updatePayNodeState(2, payNodeID);
	}
	
	@Override
	@Transactional(rollbackFor = Exception.class)
	public void executeReceive(Map<String, Object> map) throws Exception {
		int receiveNodeID = (int) map.get("ReceiveNodeID");
		
		// 更新收款节点
		Map<String, Object> node = new HashMap<>();
		node.put("ReceiveNodeID", receiveNodeID);
		node.put("ActualMoney", String.valueOf(map.get("ActualMoney")));
		node.put("ActualCurrency", Integer.parseInt(String.valueOf(map.get("ActualCurrency"))));
		node.put("InvoiceState", Integer.parseInt(String.valueOf(map.get("InvoiceState"))));
		contractMapper.updateReceiveNode(node);
		
		// 更新收款节点状态
		contractMapper.updateReceiveNodeState(2, receiveNodeID);
	}
	
	@SuppressWarnings("unchecked")
	@Override
	@Transactional(rollbackFor = Exception.class)
	public void registerContract(Map<String, Object> map) throws Exception {
		int contractID = (int) map.get("ContractID");
		
		// 更新合同以及其状态
		Map<String, Object> param = new HashMap<>();
		fillContractBasicInfo(param, map);
		param.put("State", 3);
		param.put("ContractID", contractID);
		contractMapper.updateContract(param);
		
		// 创建付款节点
		List<Map<String, Object>> payNodes = (List<Map<String, Object>>) map.get("PayTimes");
		if (payNodes != null) {
			for (Map<String, Object> payNode : payNodes) {
				Map<String, Object> node = new HashMap<>();
				node.put("ContractID", contractID);
				node.put("Type", Integer.parseInt(String.valueOf(payNode.get("Type"))));
				node.put("ExpectedMoney", String.valueOf(payNode.get("ExpectedMoney")));
				node.put("ExpectedCurrency", Integer.parseInt(String.valueOf(payNode.get("ExpectedCurrency"))));
				node.put("PayCondition", String.valueOf(payNode.get("PayCondition")));
				node.put("PayDate", Util.string2date(String.valueOf(payNode.get("PayDate"))));
				node.put("PayCredential", String.valueOf(payNode.get("PayCredential")));
				contractMapper.createPayNode(node);
			}
		}
		
		// 创建收款节点
		List<Map<String, Object>> receiveNodes = (List<Map<String, Object>>) map.get("ReceiveTimes");
		if (receiveNodes != null) {
			for (Map<String, Object> receiveNode : receiveNodes) {
				Map<String, Object> node = new HashMap<>();
				node.put("ContractID", contractID);
				node.put("Type", Integer.parseInt(String.valueOf(receiveNode.get("Type"))));
				node.put("ExpectedMoney", String.valueOf(receiveNode.get("ExpectedMoney")));
				node.put("ExpectedCurrency", Integer.parseInt(String.valueOf(receiveNode.get("ExpectedCurrency"))));
				node.put("ReceiveCondition", String.valueOf(receiveNode.get("ReceiveCondition")));
				node.put("ReceiveDate", Util.string2date(String.valueOf(receiveNode.get("ReceiveDate"))));
				contractMapper.createReceiveNode(node);
			}
		}
	}
	
	private void fillContractBasicInfo(Map<String, Object> param, Map<String, Object> map) throws Exception{
		param.put("CreatedUsername", Util.loginUsername());
		param.put("Number", (String) map.get("Number"));
		param.put("Name", String.valueOf(map.get("Name")));
		param.put("FinancialFlow", Integer.parseInt(String.valueOf(map.get("FinancialFlow"))));
		param.put("IsForeignContract", Boolean.parseBoolean(String.valueOf(map.get("IsForeignContract"))));
		param.put("Description", String.valueOf(map.get("Description")));
		param.put("SubjectObjects", list2string(map, "SubjectObjects", "SubjectObjectNumber"));
		param.put("SubjectObjectOther", String.valueOf(map.get("SubjectObjectOther")));
		param.put("FundsType", Integer.parseInt(String.valueOf(map.get("FundsType"))));
		param.put("Departments", list2string(map, "Departments", "DepartmentNumber"));
		param.put("Operator", String.valueOf(map.get("Operator")));
		param.put("ProjectNumber", String.valueOf(map.get("ProjectNumber")));
		param.put("BudgetNumber", String.valueOf(map.get("BudgetNumber")));
		param.put("Money", String.valueOf(map.get("Money")));
		param.put("Currency", Integer.parseInt(String.valueOf(map.get("Currency"))));
		param.put("TargetCompanyName", String.valueOf(map.get("TargetCompanyName")));
		param.put("ArchiveMaterials", list2string(map, "ArchiveMaterials", "ArchiveMaterialNumber"));
		param.put("ArchiveMaterialOther", String.valueOf(map.get("ArchiveMaterialOther")));
		param.put("StartDate", Util.string2date(String.valueOf(map.get("StartDate"))));
		param.put("EndDate", Util.string2date(String.valueOf(map.get("EndDate"))));
	}
	
	@Override
	@Transactional(rollbackFor = Exception.class)
	public Map<String, Object> createContract(Map<String, Object> map) throws Exception {
		Map<String, Object> param = new HashMap<>();
		fillContractBasicInfo(param, map);
		contractMapper.createContract(param);
		return param;
	}

	@SuppressWarnings("unchecked")
	private String list2string(Map<String, Object> map, String key, String subKey) {
		
		// 合同表中的一些checkbox多选框在数据库中以字符串的形式保存，如[0, 1, 3]保存为：#0#1#3#
		// 0、1、3这些数字是何意义完全是由前端来解析的
		
		// 把一个多选框List转换成字符串
		String str = "#";
		List<Map<String, Object>> list = (List<Map<String, Object>>) map.get(key);
		for (int i = 0; i < list.size(); i++) {
			str += (int) list.get(i).get(subKey);
			str += "#";
		}
		return str;
	}

	private List<Map<String, Object>> string2list(Map<String, Object> map, String key, String subKey) {
		
		// 把字符串转换成多选框List
		String str = (String) map.get(key);
		List<Map<String, Object>> list = new ArrayList<>();
		String ss[] = str.split("#");
		for (String s : ss) {
			if (s.equals("")) {
				continue;
			}
			Map<String, Object> m = new HashMap<>();
			m.put(subKey, Integer.parseInt(s));
			list.add(m);
		}
		return list;
	}

	@Override
	public List<Map<String, Object>> getContracts() {
		return contractMapper.getContracts();
	}

	@Override
	public Map<String, Object> getContract(int contractID) {
		
		// 获取合同基本信息
		Map<String, Object> contract = contractMapper.getContract(contractID);
		contract.put("SubjectObjects", string2list(contract, "SubjectObjects", "SubjectObjectNumber"));
		contract.put("Departments", string2list(contract, "Departments", "DepartmentNumber"));
		contract.put("ArchiveMaterials", string2list(contract, "ArchiveMaterials", "ArchiveMaterialNumber"));
		contract.put("StartDate", Util.date2string((Date) contract.get("StartDate")));
		contract.put("EndDate", Util.date2string((Date) contract.get("EndDate")));
		
		// 获取付款节点
		List<Map<String, Object>> payNodes = contractMapper.getPayNodes(contractID);
		for (Map<String, Object> node : payNodes) {
			node.put("PayDate", Util.date2string((Date) node.get("PayDate")));
			node.put("CreatedTime", Util.date2string((Date) node.get("CreatedTime")));
		}
		contract.put("PayTimes", payNodes);
		
		// 获取收款节点
		List<Map<String, Object>> receiveNodes = contractMapper.getReceiveNodes(contractID);
		for (Map<String, Object> node : receiveNodes) {
			node.put("ReceiveDate", Util.date2string((Date) node.get("ReceiveDate")));
			node.put("InvoiceTime", Util.date2string((Date) node.get("InvoiceTime")));
		}
		contract.put("ReceiveTimes", receiveNodes);
		return contract;
	}
	
	@Override
	@Transactional(rollbackFor = Exception.class)
	public void commentContract(Map<String, Object> map) throws Exception {
		int contractID = Integer.parseInt(String.valueOf(map.get("ContractID")));
		
		// 填充审批信息（审批者、审批意见）
		Map<String, Object> contract = contractMapper.getContract(contractID);
		String username = Util.loginUsername();
		Map<String, Object> param = new HashMap<>();
		param.put("Username", username);
		param.put("Comments", String.valueOf(map.get("Comment")));
		param.put("ContractID", contractID);
		
		// 根据合同当前状态来判断是哪种审批，同时更新到下一个状态
		switch ((int)contract.get("State")) {
		case 0: // 预登记审批：合同管理员审核意见
			param.put("State", 1);
			contractMapper.updatePreRegisterContractManagerComments(param);
			break;
		case 1: // 预登记审批：项目分管领导审核意见
			param.put("State", 2);
			contractMapper.updatePreRegisterProjectManagerComments(param);
			break;
		case 3: // 正式登记审批：合同管理员审核意见
			param.put("State", 4);
			contractMapper.updateFormalRegisterContractManagerComments(param);
			break;
		case 4: // 正式登记审批：项目分管领导审核意见
			param.put("State", 5);
			contractMapper.updateFormalRegisterProjectManagerComments(param);
			
			// 正式审批完成了，接下来合同就进入执行阶段了，这里预先把下一个需要执行的节点（付款节点或者收款节点）的状态更新，等待经办人执行
			switch((int)contract.get("FinancialFlow")){
			case 0: // 入账合同
				Map<String, Object> receivenode = contractMapper.getFirstReceiveNode(0, contractID);
				if(receivenode != null){
					contractMapper.updateReceiveNodeState(1, (int)receivenode.get("ReceiveNodeID"));
				}
				break;
			case 1: // 出账合同
				Map<String, Object> paynode = contractMapper.getFirstPayNode(0, contractID);
				if(paynode != null){
					contractMapper.updatePayNodeState(1, (int)paynode.get("PayNodeID"));
				}
				break;
			}
			break;
		default:
			throw new Exception("审批失败，请稍后再试");
		}
	}

	@Override
	public List<Map<String, Object>> getVerifyContracts() throws Exception {
		
		Set<String> authorities = Util.loginAuthorities();
		List<Map<String, Object>> list = new ArrayList<>();
		
		// 获取合同管理员所有能审核的合同
		if(authorities.contains("ROLE_CONTRACT_MANAGER")){
			list.addAll(contractMapper.getContractByState(0)); // 预登记审批
			list.addAll(contractMapper.getContractByState(3)); // 正式登记审批
		}
		
		// 获取项目分管领导所有能审核的合同
		if(authorities.contains("ROLE_PROJECT_MANAGER")){
			list.addAll(contractMapper.getContractByState(1)); // 预登记审批
			list.addAll(contractMapper.getContractByState(4)); // 正式登记审批
		}
		return list;
	}

	@Override
	public List<Map<String, Object>> getRegisterContracts() throws Exception {
		String username = Util.loginUsername();
		
		// 获取等待该经办人正式登记的所有合同
		List<Map<String, Object>> list = contractMapper.getContractByStateAndOperator(2, username);
		return list;
	}
	@Override
	public List<Map<String, Object>> getExecuteContracts() throws Exception {
		String username = Util.loginUsername();
		
		// 获取等待该经办人执行的所有合同
		List<Map<String, Object>> list = new ArrayList<>();
		list.addAll(contractMapper.getPayNodeByStateAndOperator(1, username));
		list.addAll(contractMapper.getReceiveNodeByStateAndOperator(1, username));
		return list;
	}
}
