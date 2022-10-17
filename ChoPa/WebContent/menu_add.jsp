<%@ page contentType="text/html; charset=utf-8"%>
<%@page import="java.io.PrintWriter"%>
<html>
<head>
	<!-- 합쳐지고 최소화된 최신 CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
	
	<title>Welcome</title>
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
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('로그인을 하세요')");
			script.println("location.href='login.jsp'");
			script.println("</script>");
	%>
	<%@ include file = "menu_logout.jsp"%>
	<%
		}else{
	%>
	<%@ include file = "menu_login.jsp" %>
	<%
		}
	%>
	<div class ="jumbotron">
		<div class ="container">
			</div>
			<h1>상품 등록 / 수정  / 삭제</h1>
			<div>
 				<ul class="navbar-nav mr-auto">
				<li class="nav-item"><a class="nav-link" href="./addProduct.jsp">상품 등록</a></li>
				<li class="nav-item"><a class="nav-link" href="./editProduct.jsp?edit=update">상품 수정</a></li>
				<li class="nav-item"><a class="nav-link" href="./editProduct.jsp?edit=delete">상품 삭제</a></li>				
			 </ul>	
		</div>
	</div> 
	
</body>
</html>