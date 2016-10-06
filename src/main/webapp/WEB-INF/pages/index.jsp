<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>

<security:authorize
	access="hasRole('ROLE_CONTRACT_MANAGER') || hasRole('ROLE_PROJECT_MANAGER')">
	<jsp:include page="list-verify.jsp"></jsp:include>
</security:authorize>
<security:authorize
	access="!hasRole('ROLE_CONTRACT_MANAGER') && !hasRole('ROLE_PROJECT_MANAGER')">
	<jsp:include page="list-register.jsp"></jsp:include>
</security:authorize>
