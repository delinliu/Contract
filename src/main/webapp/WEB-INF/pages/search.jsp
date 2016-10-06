<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<link href="<%=request.getContextPath()%>/css/bootstrap.css"
	rel="stylesheet">
<link href="<%=request.getContextPath()%>/css/contract.css"
	rel="stylesheet">
<link href="<%=request.getContextPath()%>/css/list-contract.css"
	rel="stylesheet">
<link
	href="<%=request.getContextPath()%>/css/bootstrap-datetimepicker.css"
	rel="stylesheet">
<link href="<%=request.getContextPath()%>/css/bootstrap-table.css"
	rel="stylesheet">

<script src="<%=request.getContextPath()%>/js/jquery.js"></script>
<script
	src="<%=request.getContextPath()%>/js/bootstrap-datetimepicker.js"
	charset="UTF-8"></script>
<script
	src="<%=request.getContextPath()%>/js/bootstrap-datetimepicker.zh-CN.js"
	charset="UTF-8"></script>
<script src="<%=request.getContextPath()%>/js/bootstrap-table.js"
	charset="UTF-8"></script>
<script src="<%=request.getContextPath()%>/js/util.js"></script>
<script src="<%=request.getContextPath()%>/js/contract.js"
	charset="UTF-8"></script>
<script src="<%=request.getContextPath()%>/js/search.js"
	charset="UTF-8"></script>
</head>
<body>
	<div class="container text-center">
		<jsp:include page="header.jsp"></jsp:include>
		<div class="row">
			<jsp:include page="nav.jsp">
				<jsp:param name="pageTitle" value="search" />
			</jsp:include>
			<div class="text-center col-md-10">
				<h1>合同登记表搜索</h1>
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
							name="financial-flow" value=-100>全部<br /> <input
							type="radio" name="financial-flow" value=0>收入<br> <input
							type="radio" name="financial-flow" value=1>支出</td>
						<td class="table-key-width">是否为涉外合同</td>
						<td class="table-value-width"><input type="radio"
							name="is-foreign-contract" value="-100">全部<br> <input
							type="radio" name="is-foreign-contract" value="true">是<br>
							<input type="radio" name="is-foreign-contract" value="false">否</td>
					</tr>
					<tr>
						<td class="table-key-width">合同标的物</td>
						<td class="table-value-width" id="contract_object_dict"><input
							type="radio" name="object" value=-100>全部<br /> <input
							type="radio" name="object" value=0>产品<br /> <input
							type="radio" name="object" value=1>软件<br /> <input
							type="radio" name="object" value=2>设备<br /> <input
							type="radio" name="object" value=3>文档<br /> <input
							type="radio" name="object" value=4>服务<br /> <input
							type="radio" name="object" value=-1>其他</td>
						<td class="table-key-width">经费归集类别</td>
						<td class="table-value-width"><input type="radio"
							name="funds-type" value=-100>全部<br> <input
							type="radio" name="funds-type" value=0>设计费<br> <input
							type="radio" name="funds-type" value=1>外协费<br> <input
							type="radio" name="funds-type" value=2>专用费<br> <input
							type="radio" name="funds-type" value=3>事务费<br> <input
							type="radio" name="funds-type" value=4>专家咨询费</td>
					</tr>
					<tr>
						<td class="table-key-width">合同承办部门</td>
						<td class="table-value-width"><input type="radio"
							name="department" value=-100>全部<br> <input
							type="radio" name="department" value=0>民机系统部<br> <input
							type="radio" name="department" value=1>民机管理部<br> <input
							type="radio" name="department" value=2>电子部<br> <input
							type="radio" name="department" value=3>软件部</td>
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
					<tr id="">
						<td colspan=4 id="pay-nodes">
							<table class="table-bordered">
								<tr>
									<td class="table-key-width">付款节点</td>
									<td class="table-key-width">计划付款日期</td>
									<td class="table-value-width"><input class="date-picker"
										data-pay-date type="text"></td>
									<td class="table-key-width">支付类型</td>
									<td class="table-value-width"><input type="radio"
										name="fund-direction" value=-100>全部<br>
									<input type="radio" name="fund-direction" value=0>挂账<br>
										<input type="radio" name="fund-direction" value=1>预付<br>
										<input type="radio" name="fund-direction" value=2>决算款
									</td>
								</tr>
								<tr>
									<td class="table-key-width" colspan=1>收款节点</td>
									<td class="table-key-width" colspan=1>计划收款日期</td>
									<td class="table-value-width" colspan=3><input
										class="date-picker" data-receive-date type="text"></td>
								</tr>
							</table>
						</td>
					</tr>
					<tr id="">
						<td class="table-key-width">排序</td>
						<td class="table-value-width"> <input
							type="radio" name="sort-type" value=0 checked=checked>履行期限（始）<br> <input
							type="radio" name="sort-type" value=1>履行期限（终）<br> <input
							type="radio" name="sort-type" value=2>计划付款日期<br> <input
							type="radio" name="sort-type" value=3>计划收款日期</td>
						<td class="table-key-width">排序</td>
						<td class="table-value-width"> <input
							type="radio" name="sort-order" value=0 checked=checked>升序<br> <input
							type="radio" name="sort-order" value=1>降序</td>
					</tr>
					<tr>
					<td colspan=4>
					<button class="btn btn-primary" style="width:200px">搜 索</button></td>
					</tr>
				</table>
				<div style="padding-top:20px">
				</div>
				<table id="contract-table">

				</table>
			</div>
		</div>
	</div>
</body>
</html>