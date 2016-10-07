package cn.edu.sjtu.se.reins.contract.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.edu.sjtu.se.reins.contract.service.ContractService;
import cn.edu.sjtu.se.reins.contract.util.Util;

@Controller
public class ContractController {

	@Autowired
	private ContractService contractServicecImpl;
	
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String index() {
		return "/WEB-INF/pages/index.jsp";
	}
	
	@RequestMapping(value = "/search", method = RequestMethod.GET)
	public String search() {
		return "/WEB-INF/pages/search.jsp";
	}
	
	@RequestMapping(value = "/role", method = RequestMethod.GET)
	public String role() {
		return "/WEB-INF/pages/role.jsp";
	}

	@RequestMapping(value = "/pre-register", method = RequestMethod.GET)
	public String preRegister() {
		return "/WEB-INF/pages/pre-register.jsp";
	}

	@RequestMapping(value = "/list-verify", method = RequestMethod.GET)
	public String listVerify() {
		return "/WEB-INF/pages/list-verify.jsp";
	}

	@RequestMapping(value = "/list-register", method = RequestMethod.GET)
	public String listRegister() {
		return "/WEB-INF/pages/list-register.jsp";
	}

	@RequestMapping(value = "/list-execute", method = RequestMethod.GET)
	public String listExecute() {
		return "/WEB-INF/pages/list-execute.jsp";
	}

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout() {
		return "/WEB-INF/pages/logout.jsp";
	}

	@RequestMapping(value = "/view-contract/{ContractID}", method = RequestMethod.GET)
	public String viewContractPage() {
		return "/WEB-INF/pages/view-contract.jsp";
	}

	@RequestMapping(value = "/comment-contract/{ContractID}", method = RequestMethod.GET)
	public String commentContractPage() {
		return "/WEB-INF/pages/comment-contract.jsp";
	}

	@RequestMapping(value = "/register-contract/{ContractID}", method = RequestMethod.GET)
	public String registerContractPage() {
		return "/WEB-INF/pages/register-contract.jsp";
	}

	@RequestMapping(value = "/pay-register/{PayNodeID}", method = RequestMethod.GET)
	public String payRegister() {
		return "/WEB-INF/pages/pay-register.jsp";
	}

	@RequestMapping(value = "/receive-register/{ReceiveNodeID}", method = RequestMethod.GET)
	public String receiveRegister() {
		return "/WEB-INF/pages/receive-register.jsp";
	}

	@RequestMapping(value = "/create-contract", method = RequestMethod.POST, consumes = "application/json")
	@ResponseBody
	public Map<String, Object> createContract(@RequestBody Map<String, Object> parameters) {
		try {
			return Util.createMap(contractServicecImpl.createContract(parameters));
		} catch (Exception e) {
			e.printStackTrace();
			return Util.createErrorMap("创建合同表失败，请稍后再试或联系管理员。");
		}
	}

	@RequestMapping(value = "/register-contract", method = RequestMethod.POST, consumes = "application/json")
	@ResponseBody
	public Map<String, Object> updateContract(@RequestBody Map<String, Object> parameters) {
		try {
			contractServicecImpl.registerContract(parameters);
			return Util.createMap(null);
		} catch (Exception e) {
			e.printStackTrace();
			return Util.createErrorMap("操作失败，请稍后再试或联系管理员。");
		}
	}

	@RequestMapping(value = "/execute-pay", method = RequestMethod.POST, consumes = "application/json")
	@ResponseBody
	public Map<String, Object> executePay(@RequestBody Map<String, Object> parameters) {
		try {
			contractServicecImpl.executePay(parameters);
			return Util.createMap(null);
		} catch (Exception e) {
			e.printStackTrace();
			return Util.createErrorMap("操作失败，请稍后再试或联系管理员。");
		}
	}

	@RequestMapping(value = "/execute-receive", method = RequestMethod.POST, consumes = "application/json")
	@ResponseBody
	public Map<String, Object> executeReceive(@RequestBody Map<String, Object> parameters) {
		try {
			contractServicecImpl.executeReceive(parameters);
			return Util.createMap(null);
		} catch (Exception e) {
			e.printStackTrace();
			return Util.createErrorMap("操作失败，请稍后再试或联系管理员。");
		}
	}
	
	@RequestMapping(value = "/search", method = RequestMethod.POST, consumes = "application/json")
	@ResponseBody
	public Map<String, Object> search(@RequestBody Map<String, Object> parameters) {
		try {
			return Util.createMap(contractServicecImpl.search(parameters));
		} catch (Exception e) {
			e.printStackTrace();
			return Util.createErrorMap("操作失败，请稍后再试或联系管理员。");
		}
	}
	
	@RequestMapping(value = "/users", method = RequestMethod.POST, consumes = "application/json")
	@ResponseBody
	public Map<String, Object> users(@RequestBody Map<String, Object> parameters) {
		try {
			return Util.createMap(contractServicecImpl.users(parameters));
		} catch (Exception e) {
			e.printStackTrace();
			return Util.createErrorMap("操作失败，请稍后再试或联系管理员。");
		}
	}
	
	@RequestMapping(value = "/add-role", method = RequestMethod.POST, consumes = "application/json")
	@ResponseBody
	public Map<String, Object> addRole(@RequestBody Map<String, Object> parameters) {
		try {
			contractServicecImpl.addRole(parameters);
			return Util.createMap(null);
		} catch (Exception e) {
			e.printStackTrace();
			return Util.createErrorMap("操作失败，请稍后再试或联系管理员。");
		}
	}
	
	@RequestMapping(value = "/remove-role", method = RequestMethod.POST, consumes = "application/json")
	@ResponseBody
	public Map<String, Object> removeRole(@RequestBody Map<String, Object> parameters) {
		try {
			contractServicecImpl.removeRole(parameters);
			return Util.createMap(null);
		} catch (Exception e) {
			e.printStackTrace();
			return Util.createErrorMap("操作失败，请稍后再试或联系管理员。");
		}
	}

	@RequestMapping(value = "/get-contracts", method = RequestMethod.GET)
	@ResponseBody
	public Map<String, Object> getContracts() {
		try {
			return Util.createMap(contractServicecImpl.getContracts());
		} catch (Exception e) {
			e.printStackTrace();
			return Util.createErrorMap("获取合同表失败，请稍后再试或联系管理员。");
		}
	}

	@RequestMapping(value = "/get-verify-contracts", method = RequestMethod.GET)
	@ResponseBody
	public Map<String, Object> getVerifyContracts() {
		try {
			return Util.createMap(contractServicecImpl.getVerifyContracts());
		} catch (Exception e) {
			e.printStackTrace();
			return Util.createErrorMap("获取合同表失败，请稍后再试或联系管理员。");
		}
	}

	@RequestMapping(value = "/get-execute-contracts", method = RequestMethod.GET)
	@ResponseBody
	public Map<String, Object> getExecuteContracts() {
		try {
			return Util.createMap(contractServicecImpl.getExecuteContracts());
		} catch (Exception e) {
			e.printStackTrace();
			return Util.createErrorMap("获取合同表失败，请稍后再试或联系管理员。");
		}
	}

	@RequestMapping(value = "/get-register-contracts", method = RequestMethod.GET)
	@ResponseBody
	public Map<String, Object> getRegisterContracts() {
		try {
			return Util.createMap(contractServicecImpl.getRegisterContracts());
		} catch (Exception e) {
			e.printStackTrace();
			return Util.createErrorMap("获取合同表失败，请稍后再试或联系管理员。");
		}
	}

	@RequestMapping(value = "/get-contract", method = RequestMethod.GET)
	@ResponseBody
	public Map<String, Object> getContract(@RequestParam("ContractID") int ContractID) {
		try {
			return Util.createMap(contractServicecImpl.getContract(ContractID));
		} catch (Exception e) {
			e.printStackTrace();
			return Util.createErrorMap("获取合同表失败，请稍后再试或联系管理员。");
		}
	}

	@RequestMapping(value = "/comment-contract", method = RequestMethod.POST, consumes = "application/json")
	@ResponseBody
	public Map<String, Object> commentContract(@RequestBody Map<String, Object> parameters) {
		try {
			contractServicecImpl.commentContract(parameters);
			return Util.createMap(null);
		} catch (Exception e) {
			e.printStackTrace();
			return Util.createErrorMap("提交失败，请稍后再试或联系管理员。");
		}
	}

}
