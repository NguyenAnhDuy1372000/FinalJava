<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><decorator:title></decorator:title></title>
<c:url value="/resources/" var="resourcespath" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<link rel="stylesheet" href="${resourcespath}css/style.css">
</head>
<body>
	<%@include file="/WEB-INF/views/layouts/user/header.jsp"%>

	<decorator:body></decorator:body>

	<%@include file="/WEB-INF/views/layouts/user/footer.jsp"%>
	<%@include file="/WEB-INF/views/layouts/allcss.jsp"%>
</body>
</html>