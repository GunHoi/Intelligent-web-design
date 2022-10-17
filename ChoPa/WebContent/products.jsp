<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*" %>
<html>
<head>
	<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<title>상품 목록</title>
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
	%> 
	
	<div class ="jumbotron">
		<div class ="container">
			<h1 class = "display-3">상품목록</h1>
		</div>
	</div>
		<div class ="container">
			<div class ="row" align="center">
				<%@ include file="dbconn.jsp" %>
				<%
					PreparedStatement pstmt = null;
					ResultSet rs = null;
					String sql = "select * from product";
					pstmt = conn.prepareStatement(sql);
					rs = pstmt.executeQuery();
					while (rs.next()){
				%>
				<div class = "col-md-4">
					<img src="c:/upload/<%=rs.getString("p_fileName")%>" style="width: 300px;height:300px">
					<h3><%=rs.getString("p_name")%></h3>
					<p><%=rs.getString("p_description")%>
					<p><%=rs.getString("p_UnitPrice") %>원
					<p><a href="./product.jsp?id=<%=rs.getString("p_id") %>" class="btn btn-secondary" role="button"> 상세 정보 &raquo;></a>
				</div>
				<% 
						} 
				%>
	<% 
		if(rs!=null)
			rs.close();
		if(pstmt != null)
			pstmt.close();
		if(conn!=null)
			conn.close();
	%>	
			</div>
			<hr>
		</div>
	<%@ include file = "footer.jsp" %>	
</body>
</html>