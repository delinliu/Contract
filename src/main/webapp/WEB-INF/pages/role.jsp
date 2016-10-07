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
<link href="<%=request.getContextPath()%>/css/role.css"
	rel="stylesheet">
<link
	href="<%=request.getContextPath()%>/css/bootstrap-datetimepicker.css"
	rel="stylesheet">
<link href="<%=request.getContextPath()%>/css/bootstrap-table.css"
	rel="stylesheet">

<script src="<%=request.getContextPath()%>/js/jquery.js"></script>
<script src="<%=request.getContextPath()%>/js/bootstrap.js"
	charset="UTF-8"></script>
<script
	src="<%=request.getContextPath()%>/js/bootstrap-datetimepicker.js"
	charset="UTF-8"></script>
<script
	src="<%=request.getContextPath()%>/js/bootstrap-datetimepicker.zh-CN.js"
	charset="UTF-8"></script>
<script src="<%=request.getContextPath()%>/js/bootstrap-table.js"
	charset="UTF-8"></script>
<script src="<%=request.getContextPath()%>/js/util.js"></script>
<script src="<%=request.getContextPath()%>/js/role.js"></script>
</head>
<body>
	<div class="container text-center">
		<jsp:include page="header.jsp"></jsp:include>
		<div class="row">
			<jsp:include page="nav.jsp">
				<jsp:param name="pageTitle" value="role" />
			</jsp:include>
			<div class="text-center col-md-10">
				<h1>权限管理</h1>
				<form class="form-inline" role="form">
					<div class="form-group">
						<label for="search-username" class="sr-only">请输入用户名</label> <input
							type="text" class="form-control" id="search-username"
							placeholder="请输入用户名">
					</div>
					<button id="search-username-btn" type="button" class="btn btn-default">搜索</button>
				</form>
				<table id="users-table">

				</table>
				<nav>
					<ul class="pagination" data-pagination>
					</ul>
				</nav>
			</div>
		</div>
	</div>
</body>
</html>