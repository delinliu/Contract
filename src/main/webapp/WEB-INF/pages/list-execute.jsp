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
<script src="<%=request.getContextPath()%>/js/list-execute.js"
	charset="UTF-8"></script>
</head>
<body>
	<div class="container text-center">
		<jsp:include page="header.jsp"></jsp:include>
		<div class="row">
			<jsp:include page="nav.jsp">
				<jsp:param name="pageTitle" value="list-execute"/>  
			</jsp:include>
			<div class="text-center col-md-10">
				<h1>正在执行的合同表</h1>
				<table id="contract-table">

				</table>
			</div>
		</div>
	</div>
</body>
</html>