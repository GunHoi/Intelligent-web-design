<%@ page language="java" contentType="text/html; charset=utf-8"%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<title>상품 아이디 오류</title>
</head>
<body>
	<%
		String userID = null;
		if(session.getAttribute("userID") != null){
			userID = (String)session.getAttribute("userID");
		}
	%>
	<%
		if(userID==null){
	%>
	<%@ include file = "menu_logout.jsp"%>
	<%
		}else{
	%>
	<%@ include file = "menu_login.jsp" %>
	<%
		}
	%> />
	<div class ="jumbotron">
		<div class="container">
			<h2 class="alert alert-danger">해당 상품이 존재하지 않습니다.</h2>
		</div>
	</div>
	<div class="container">
		<p><%=request.getRequestURL()%>?<%=request.getQueryString() %>
		<p> <a href="products.jsp" class="btn btn-secondary"> 상품 목록 &raquo;</a>
	</div>
</body>
</html>