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

	public List<Map<String, Object>> getDict(String tableName) {
		if (tableName.contains(" ")) {
			return null;
		}
		try {
			return contractMapper.getDict(tableName);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}


	@Override
	@Transactional(rollbackFor = Exception.class)
	public void executePay(Map<String, Object> map) throws Exception {
		int payNodeID = (int) map.get("PayNodeID");
		Map<String, Object> node = new HashMap<>();
		node.put("PayNodeID", payNodeID);
		node.put("ActualMoney", String.valueOf(map.get("ActualMoney")));
		node.put("ActualCurrency", Integer.parseInt(String.valueOf(map.get("ActualCurrency"))));
		node.put("PayType", Integer.parseInt(String.valueOf(map.get("PayType"))));
		node.put("IsCredentialFiled", Boolean.parseBoolean(String.valueOf(map.get("IsCredentialFiled"))));
		node.put("Composition", String.valueOf(map.get("Composition")));
		contractMapper.updatePayNode(node);
		contractMapper.updatePayNodeState(2, payNodeID);
	}
	
	@Override
	@Transactional(rollbackFor = Exception.class)
	public void executeReceive(Map<String, Object> map) throws Exception {
		int receiveNodeID = (int) map.get("ReceiveNodeID");
		Map<String, Object> node = new HashMap<>();
		node.put("ReceiveNodeID", receiveNodeID);
		node.put("ActualMoney", String.valueOf(map.get("ActualMoney")));
		node.put("ActualCurrency", Integer.parseInt(String.valueOf(map.get("ActualCurrency"))));
		node.put("InvoiceState", Integer.parseInt(String.valueOf(map.get("InvoiceState"))));
		contractMapper.updateReceiveNode(node);
		contractMapper.updateReceiveNodeState(2, receiveNodeID);
	}
	
	@SuppressWarnings("unchecked")
	@Override
	@Transactional(rollbackFor = Exception.class)
	public void registerContract(Map<String, Object> map) throws Exception {
		int contractID = (int) map.get("ContractID");
		Map<String, Object> param = new HashMap<>();
		fillContractBasicInfo(param, map);
		param.put("State", 3);
		param.put("ContractID", contractID);
		contractMapper.updateContract(param);
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
		String str = "#";
		List<Map<String, Object>> list = (List<Map<String, Object>>) map.get(key);
		for (int i = 0; i < list.size(); i++) {
			str += (int) list.get(i).get(subKey);
			str += "#";
		}
		return str;
	}

	private List<Map<String, Object>> string2list(Map<String, Object> map, String key, String subKey) {
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
		Map<String, Object> contract = contractMapper.getContract(contractID);
		contract.put("SubjectObjects", string2list(contract, "SubjectObjects", "SubjectObjectNumber"));
		contract.put("Departments", string2list(contract, "Departments", "DepartmentNumber"));
		contract.put("ArchiveMaterials", string2list(contract, "ArchiveMaterials", "ArchiveMaterialNumber"));
		contract.put("StartDate", Util.date2string((Date) contract.get("StartDate")));
		contract.put("EndDate", Util.date2string((Date) contract.get("EndDate")));
		List<Map<String, Object>> payNodes = contractMapper.getPayNodes(contractID);
		for (Map<String, Object> node : payNodes) {
			node.put("PayDate", Util.date2string((Date) node.get("PayDate")));
			node.put("CreatedTime", Util.date2string((Date) node.get("CreatedTime")));
		}
		contract.put("PayTimes", payNodes);
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
		Map<String, Object> contract = contractMapper.getContract(contractID);
		String username = Util.loginUsername();
		Map<String, Object> param = new HashMap<>();
		param.put("Username", username);
		param.put("Comments", String.valueOf(map.get("Comment")));
		param.put("ContractID", contractID);
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
		if(authorities.contains("ROLE_CONTRACT_MANAGER")){
			list.addAll(contractMapper.getContractByState(0));
			list.addAll(contractMapper.getContractByState(3));
		}
		if(authorities.contains("ROLE_PROJECT_MANAGER")){
			list.addAll(contractMapper.getContractByState(1));
			list.addAll(contractMapper.getContractByState(4));
		}
		return list;
	}

	@Override
	public List<Map<String, Object>> getRegisterContracts() throws Exception {
		String username = Util.loginUsername();
		List<Map<String, Object>> list = contractMapper.getContractByStateAndOperator(2, username);
		return list;
	}
	@Override
	public List<Map<String, Object>> getExecuteContracts() throws Exception {
		String username = Util.loginUsername();
		List<Map<String, Object>> list = new ArrayList<>();
		list.addAll(contractMapper.getPayNodeByStateAndOperator(1, username));
		list.addAll(contractMapper.getReceiveNodeByStateAndOperator(1, username));
		return list;
	}
}
