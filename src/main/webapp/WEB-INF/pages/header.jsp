<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<div style="margin-top: 5px">
	<a href="<%=request.getContextPath()%>/logout" style="float: right">注销</a>
	<span style="float: right">你好，<security:authentication property="principal.username" />&nbsp;&nbsp;&nbsp;</span>
</div>
<script>
var globalIsContractManager = false;
var globalIsProjectManager = false;
var globalIsOperator = false;
<security:authorize access="hasRole('ROLE_CONTRACT_MANAGER')">
globalIsContractManager = true;
</security:authorize>
<security:authorize access="hasRole('ROLE_PROJECT_MANAGER')">
globalIsProjectManager = true;
</security:authorize>
<security:authorize access="hasRole('ROLE_OPERATOR')">
globalIsOperator = true;
</security:authorize>
</script>