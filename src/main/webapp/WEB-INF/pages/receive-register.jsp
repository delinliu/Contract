<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<link href="<%=request.getContextPath()%>/css/bootstrap.css"
	rel="stylesheet">
<link href="<%=request.getContextPath()%>/css/contract.css"
	rel="stylesheet">
<link
	href="<%=request.getContextPath()%>/css/bootstrap-datetimepicker.css"
	rel="stylesheet">

<script src="<%=request.getContextPath()%>/js/jquery.js"></script>
<script
	src="<%=request.getContextPath()%>/js/bootstrap-datetimepicker.js"
	charset="UTF-8"></script>
<script
	src="<%=request.getContextPath()%>/js/bootstrap-datetimepicker.zh-CN.js"
	charset="UTF-8"></script>
<script src="<%=request.getContextPath()%>/js/util.js"></script>
<script src="<%=request.getContextPath()%>/js/contract.js"></script>
<script src="<%=request.getContextPath()%>/js/view-contract.js"></script>
<script src="<%=request.getContextPath()%>/js/execute-contract.js"></script>
</head>
<body>
	<div class="container text-center">
		<jsp:include page="header.jsp"></jsp:include>
		<div class="row">
			<jsp:include page="nav.jsp">
				<jsp:param name="pageTitle" value="view-contract"/>  
			</jsp:include>
			<div class="text-center col-md-10">
				<h1 id="title"></h1>
				<table class=" table-bordered"
					style="vertical-align: middle; text-align: center;">
					<tr>
						<td class="table-key-width">合同编号</td>
						<td id="number" class="table-value-width" contentEditable=true></td>
						<td class="table-key-width">合同名称</td>
						<td id="name" class="table-value-width" contentEditable=true></td>
					</tr>
					<tr>
						<td class="table-key-width">资金流向</td>
						<td class="table-value-width"><input type="radio"
							name="financial-flow" value=0>收入<br> <input
							type="radio" name="financial-flow" value=1>支出</td>
						<td class="table-key-width">是否为涉外合同</td>
						<td class="table-value-width"><input type="radio"
							name="is-foreign-contract" value="true">是<br> <input
							type="radio" name="is-foreign-contract" value="false">否</td>
					</tr>
					<tr>
						<td class="table-key-width">合同描述</td>
						<td id="description" colspan=3 contentEditable=true></td>
					</tr>
					<tr>
						<td class="table-key-width">合同标的物</td>
						<td class="table-value-width" id="contract_object_dict"><input
							type="checkbox" name="object" value=0>产品<br> <input
							type="checkbox" name="object" value=1>软件<br> <input
							type="checkbox" name="object" value=2>设备<br> <input
							type="checkbox" name="object" value=3>文档<br> <input
							type="checkbox" name="object" value=4>服务<br> <input
							type="checkbox" name="object" value=-1>其他<br> <input
							type="text" id="object-other" class="underline-input"
							placeholder="最多输入10个字符"></td>
						<td class="table-key-width">经费归集类别</td>
						<td class="table-value-width"><input type="radio"
							name="funds-type" value=0>设计费<br> <input
							type="radio" name="funds-type" value=1>外协费<br> <input
							type="radio" name="funds-type" value=2>专用费<br> <input
							type="radio" name="funds-type" value=3>事务费<br> <input
							type="radio" name="funds-type" value=4>专家咨询费</td>
					</tr>
					<tr>
						<td class="table-key-width">合同承办部门</td>
						<td class="table-value-width"><input type="checkbox"
							name="department" value=0>民机系统部<br> <input
							type="checkbox" name="department" value=1>民机管理部<br>
							<input type="checkbox" name="department" value=2>电子部<br>
							<input type="checkbox" name="department" value=3>软件部</td>
						<td class="table-key-width">合同经办人</td>
						<td id="operator" class="table-value-width" contentEditable=true></td>
					</tr>
					<tr>
						<td class="table-key-width">课题号</td>
						<td id="project-number" class="table-value-width"
							contentEditable=true></td>
						<td class="table-key-width">预算代码</td>
						<td id="budget-number" class="table-value-width"
							contentEditable=true></td>
					</tr>
					<tr>
						<td class="table-key-width">合同总金额</td>
						<td id="money" class="table-value-width" contentEditable=true></td>
						<td class="table-key-width">合同金额币种</td>
						<td class="table-value-width"><input type="radio"
							name="currency" value=0>人民币<br> <input type="radio"
							name="currency" value=1>美元<br> <input type="radio"
							name="currency" value=2>欧元<br> <input type="radio"
							name="currency" value=-1>N/A<br></td>
					</tr>
					<tr>
						<td class="table-key-width">履行期限（始）</td>
						<td class="table-value-width" style="padding: 0"><input
							id="start-date" class="date-picker" type="text"></td>
						<td class="table-key-width">履行期限（终）</td>
						<td class="table-value-width" style="padding: 0"><input
							id="end-date" class="date-picker" type="text"></td>
					</tr>
					<tr>
						<td class="table-key-width">对方单位名称</td>
						<td id="target-company-name" colspan=3 contentEditable=true></td>
					</tr>
					<tr>
						<td class="table-key-width">合同签订归档材料</td>
						<td colspan=3><input type="checkbox" name="archive-material"
							value=0>供应商资质材料<br> <input type="checkbox"
							name="archive-material" value=1>供应商选择报告<br> <input
							type="checkbox" name="archive-material" value=2>合同谈判记录表<br>
							<input type="checkbox" name="archive-material" value=3>合同预先评审表<br>
							<input type="checkbox" name="archive-material" value=4>合同书面(或会议)评审意见表<br>
							<input type="checkbox" name="archive-material" value=5>合同审批表<br>
							<input type="checkbox" name="archive-material" value=6>合同<br>
							<input type="checkbox" name="archive-material" value=-1>其他<br>
							<input id="archive-material-other" type="text"
							class="underline-input" placeholder="最多输入10个字符"></td>
					</tr>
					<tr id="">
						<td colspan=4 id="pay-nodes">
							<table class="table-bordered">
								<tr>
									<td rowspan=6 class="table-key-width">付款节点1<br> <a>删除节点</a></td>
									<td class="table-key-width">节点类型</td>
									<td colspan=3 class="table-value-width"><input
										type="radio" name="fund-direction" value="">首付款<br>
										<input type="radio" name="fund-direction" value="">进度款<br>
										<input type="radio" name="fund-direction" value="">尾款<br>
										<input type="radio" name="fund-direction" value="">一次性款项<br>
										<input type="radio" name="fund-direction" value="">维保款
									</td>
								</tr>
								<tr>
									<td class="table-key-width">节点计划发生金额</td>
									<td class="table-value-width" contentEditable=true></td>
									<td class="table-key-width">币种</td>
									<td class="table-value-width"><input type="radio"
										name="fund-direction" value="">人民币<br> <input
										type="radio" name="fund-direction" value="">美元<br>
										<input type="radio" name="fund-direction" value="">欧元<br>
										<input type="radio" name="fund-direction" value="">N/A
									</td>
								</tr>
								<tr>
									<td class="table-key-width">付款条件</td>
									<td class="table-value-width" contentEditable=true></td>
									<td class="table-key-width">计划付款日期</td>
									<td class="table-value-width"><input class="date-picker"
										type="text"></td>
								</tr>
								<tr>
									<td class="table-key-width">付款依据</td>
									<td colspan=3 contentEditable=true></td>
								</tr>
								<tr>
									<td class="table-key-width">实际支付金额</td>
									<td class="table-value-width" contentEditable=true></td>
									<td class="table-key-width">币种</td>
									<td class="table-value-width"><input type="radio"
										name="fund-direction" value="">人民币<br> <input
										type="radio" name="fund-direction" value="">美元<br>
										<input type="radio" name="fund-direction" value="">欧元<br>
									</td>
								</tr>
								<tr>
									<td class="table-key-width">支付类型</td>
									<td class="table-value-width"><input type="radio"
										name="fund-direction" value="">挂账<br> <input
										type="radio" name="fund-direction" value="">预付<br>
										<input type="radio" name="fund-direction" value="">决算款
									</td>
									<td class="table-key-width">支付申请时间</td>
									<td class="table-value-width">系统自动生成</td>
								</tr>
							</table>
							<div>
								<a id="add-pay-node">点击添加一个付款节点</a>
							</div>
						</td>
					</tr>
					<tr id="">
						<td colspan=4 style="padding-top: 0" id="receive-nodes">
							<table class="table-bordered">
								<tr>
									<td rowspan=6 class="table-key-width">收款节点1<br> <a>删除节点</a></td>
									<td class="table-key-width">节点类型</td>
									<td colspan=3 class="table-value-width"><input
										type="radio" name="fund-direction" value="">首付款<br>
										<input type="radio" name="fund-direction" value="">进度款<br>
										<input type="radio" name="fund-direction" value="">尾款<br>
										<input type="radio" name="fund-direction" value="">一次性款项
									</td>
								</tr>
								<tr>
									<td class="table-key-width">节点计划收款金额</td>
									<td class="table-value-width" contentEditable=true></td>
									<td class="table-key-width">币种</td>
									<td class="table-value-width"><input type="radio"
										name="fund-direction" value="">人民币<br> <input
										type="radio" name="fund-direction" value="">美元<br>
										<input type="radio" name="fund-direction" value="">欧元<br>
									</td>
								</tr>
								<tr>
									<td class="table-key-width">收款条件</td>
									<td class="table-value-width" contentEditable=true></td>
									<td class="table-key-width">计划付款日期</td>
									<td class="table-value-width"><input class="date-picker"
										type="text"></td>
								</tr>
								<tr>
									<td class="table-key-width">实际收款金额</td>
									<td class="table-value-width" contentEditable=true></td>
									<td class="table-key-width">币种</td>
									<td class="table-value-width"><input type="radio"
										name="fund-direction" value="">人民币<br> <input
										type="radio" name="fund-direction" value="">美元<br>
										<input type="radio" name="fund-direction" value="">欧元<br>
									</td>
								</tr>
								<tr>
									<td class="table-key-width">发票状态</td>
									<td class="table-value-width"><input type="radio"
										name="fund-direction" value="">已开<br> <input
										type="radio" name="fund-direction" value="">未开</td>
									<td class="table-key-width">支付申请时间</td>
									<td class="table-value-width">系统自动生成</td>
								</tr>
							</table>
							<table class="table-bordered">
								<tr>
									<td rowspan=6 class="table-key-width">收款节点1<br> <a>删除节点</a></td>
									<td class="table-key-width">节点类型</td>
									<td colspan=3 class="table-value-width"><input
										type="radio" name="fund-direction" value="">首付款<br>
										<input type="radio" name="fund-direction" value="">进度款<br>
										<input type="radio" name="fund-direction" value="">尾款<br>
										<input type="radio" name="fund-direction" value="">一次性款项
									</td>
								</tr>
								<tr>
									<td class="table-key-width">节点计划收款金额</td>
									<td class="table-value-width" contentEditable=true></td>
									<td class="table-key-width">币种</td>
									<td class="table-value-width"><input type="radio"
										name="fund-direction" value="">人民币<br> <input
										type="radio" name="fund-direction" value="">美元<br>
										<input type="radio" name="fund-direction" value="">欧元<br>
									</td>
								</tr>
								<tr>
									<td class="table-key-width">收款条件</td>
									<td class="table-value-width" contentEditable=true></td>
									<td class="table-key-width">计划付款日期</td>
									<td class="table-value-width"><input class="date-picker"
										type="text"></td>
								</tr>
								<tr>
									<td class="table-key-width">实际收款金额</td>
									<td class="table-value-width" contentEditable=true></td>
									<td class="table-key-width">币种</td>
									<td class="table-value-width"><input type="radio"
										name="fund-direction" value="">人民币<br> <input
										type="radio" name="fund-direction" value="">美元<br>
										<input type="radio" name="fund-direction" value="">欧元<br>
									</td>
								</tr>
								<tr>
									<td class="table-key-width">发票状态</td>
									<td class="table-value-width"><input type="radio"
										name="fund-direction" value="">已开<br> <input
										type="radio" name="fund-direction" value="">未开</td>
									<td class="table-key-width">支付申请时间</td>
									<td class="table-value-width">系统自动生成</td>
								</tr>
							</table>
							<div>
								<a id="add-receive-node">点击添加一个收款节点</a>
							</div>
						</td>
					</tr>
					<tr id=""></tr>
				</table>
				<table class=" table-bordered"
					style="vertical-align: middle; text-align: center;">
					<tr style="height:200px"> 
						<td class="table-key-width" rowspan=2 colspan=1>合同预登记审批记录</td>
						<td class="table-key-width" colspan=1>合同管理员审核意见</td>
						<td contenteditable=true id="PreRegisterContractManagerComments" colspan=2>待审核</td>
					</tr>
					<tr style="height:200px"> 
						<td class="table-key-width" colspan=1>项目分管领导审核意见</td>
						<td contenteditable=true id="PreRegisterProjectManagerComments" colspan=2>待审核</td>
					</tr> 
					
					<tr style="height:200px"> 
						<td class="table-key-width" rowspan=2 colspan=1>合同正式登记审批记录</td>
						<td class="table-key-width" colspan=1>合同管理员审核意见</td>
						<td contenteditable=true id="FormalRegisterContractManagerComments" colspan=2>待审核</td>
					</tr>
					<tr style="height:200px"> 
						<td class="table-key-width" colspan=1>项目分管领导审核意见</td>
						<td contenteditable=true id="FormalRegisterProjectManagerComments" colspan=2>待审核</td>
					</tr>
				</table>
			</div>
			<div style="height: 100px"></div>
			<div id="error-hint-div" class="alert alert-danger" role="alert"
				style="display: none; position: absolute; padding: 5px; opacity: 0.95; border-radius: 5px">
				<div id="error-hint-close" class="error-hint-close"
					style="color: #444; margin-left: 10px; float: right">关闭</div>
				<div id="error-hint-text" style="float: right"></div>
			</div>
		</div>
	</div>
	<script>
	$(function() {
		emptyAllNodes();
		var ContractID = getLastPathFromUrl();
		getContractFromServer(ContractID, initExecuteContract);
	});
	</script>
</body>
</html>