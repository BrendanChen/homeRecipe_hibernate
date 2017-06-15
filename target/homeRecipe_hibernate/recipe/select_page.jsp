<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.kindCode.model.KindCodeServiceImpl"%>
<%@page import="com.kindCode.model.KindCodeService"%>
<%@page import="com.cookWayCode.model.*" %>

<%@ page import="java.util.*"%>
<%@page import="com.kindCode.model.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<%
	KindCodeServiceImpl kindCodeService = new KindCodeServiceImpl();
	List<KindCodeVO> list = kindCodeService.getAll();
	pageContext.setAttribute("list", list);
	
	CookWayCodeServiceImpl cookWayCodeServiceImpl = new CookWayCodeServiceImpl();
	List<CookWayCodeVO> cookWayCodeList = cookWayCodeServiceImpl.getAll();
	pageContext.setAttribute("cookWayCodeList", cookWayCodeList);
	
%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>愛料理首頁</title>
<link href="<%=request.getContextPath()%>/css/bootstrap.min.css"
	rel="stylesheet" type="text/css">

</head>
<body>

	<jsp:include page="/head.jsp"/>

	<jsp:include page="/searchBar.jsp"/>
	
	<script src="<%=request.getContextPath()%>/js/jquery-3.2.0.min.js"></script>
	<script src="<%=request.getContextPath()%>/js/bootstrap.min.js"></script>

</body>
</html>