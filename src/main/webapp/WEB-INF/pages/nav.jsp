<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<ul class="nav nav-pills nav-stacked col-md-2" role="tablist"
	style="padding-top: 50px">
	<li role="presentation"
		<%="pre-register".equals(request.getParameter("pageTitle")) ? "class=\"active\"" : ""%>><a
		href="<%=request.getContextPath()%>/pre-register">预登记</a></li>
	<li role="presentation"
		<%="list-register".equals(request.getParameter("pageTitle")) ? "class=\"active\"" : ""%>><a
		href="<%=request.getContextPath()%>/list-register">登记</a></li>
	<li role="presentation"
		<%="list-execute".equals(request.getParameter("pageTitle")) ? "class=\"active\"" : ""%>><a
		href="<%=request.getContextPath()%>/list-execute">执行</a></li>
	
	<security:authorize access="hasRole('ROLE_CONTRACT_MANAGER') || hasRole('ROLE_PROJECT_MANAGER')">
	<li role="presentation"
		<%="list-verify".equals(request.getParameter("pageTitle")) ? "class=\"active\"" : ""%>><a
		href="<%=request.getContextPath()%>/list-verify">审核</a></li>
	</security:authorize>
	<li role="presentation"
		<%="list-contracts".equals(request.getParameter("pageTitle")) ? "class=\"active\"" : ""%>><a
		href="<%=request.getContextPath()%>/list-contracts">查看合同登记表</a></li>
</ul>