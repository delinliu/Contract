<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<ul class="nav nav-pills nav-stacked col-md-2" role="tablist"
	style="padding-top: 50px">
	
	<security:authorize access="hasRole('ROLE_OPERATOR')">
	<!-- 合同经办人能够看到的导航栏 -->
	<li role="presentation"
		<%="pre-register".equals(request.getParameter("pageTitle")) ? "class=\"active\"" : ""%>><a
		href="<%=request.getContextPath()%>/pre-register">预登记</a></li>
	<li role="presentation"
		<%="list-register".equals(request.getParameter("pageTitle")) ? "class=\"active\"" : ""%>><a
		href="<%=request.getContextPath()%>/list-register">登记</a></li>
	<li role="presentation"
		<%="list-execute".equals(request.getParameter("pageTitle")) ? "class=\"active\"" : ""%>><a
		href="<%=request.getContextPath()%>/list-execute">执行</a></li>
	</security:authorize>
	
	<security:authorize access="hasRole('ROLE_CONTRACT_MANAGER') || hasRole('ROLE_PROJECT_MANAGER')">
	<!-- 项目分管领导和合同管理员能够看到的导航栏 -->
	<li role="presentation"
		<%="list-verify".equals(request.getParameter("pageTitle")) ? "class=\"active\"" : ""%>><a
		href="<%=request.getContextPath()%>/list-verify">审核</a></li>
	</security:authorize>
	 
	<security:authorize access="hasRole('ROLE_OPERATOR') ||hasRole('ROLE_CONTRACT_MANAGER') || hasRole('ROLE_PROJECT_MANAGER')">
	<!-- 合同经办人、项目分管领导和合同管理员都能看到的导航栏 -->
	<li role="presentation"
		<%="search".equals(request.getParameter("pageTitle")) ? "class=\"active\"" : ""%>><a
		href="<%=request.getContextPath()%>/search">搜索</a></li>
	</security:authorize>
		
	<security:authorize access="hasRole('ROLE_ADMIN')">
	<!-- 只有admin能看到的导航栏 -->
	<li role="presentation"
		<%="role".equals(request.getParameter("pageTitle")) ? "class=\"active\"" : ""%>><a
		href="<%=request.getContextPath()%>/role">权限管理</a></li>
	</security:authorize>
		
</ul>