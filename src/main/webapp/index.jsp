<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="WEB-INF/header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="eventsapp">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link href="<c:url value="/resources/css/bootstrap/bootstrap.min.css"/>"
	rel="stylesheet">
<script src="<c:url value="/resources/js/bootstrap/bootstrap.min.js"/>"></script>
<script src="<c:url value="/resources/js/angular/angular.min.js"/>"></script>
<script src="<c:url value="/resources/js/angular/angular-resource.min.js"/>"></script>
<script src="<c:url value="/resources/js/angular/angular-route.min.js"/>"></script>
<script src="<c:url value="/resources/js/angular/angular-cookies.min.js"/>"></script>
<script src="<c:url value="/app/js/main.js"/>"></script>
<script src="<c:url value="/app/js/services/app-services.js"/>"></script>
<script src="<c:url value="/app/js/controllers/events-controller.js"/>"></script>
<script src="<c:url value="/app/js/controllers/event-controller.js"/>"></script>
<script src="<c:url value="/app/js/directives/app-directives.js"/>"></script>

<base href="/events-service/">
</head>
<body>
	<!-- Navbar ending -->
	<div class="container">
		<ng-view></ng-view>
	</div>
</body>
</html>