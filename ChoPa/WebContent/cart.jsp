<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.Product" %>
<%@ page import="dao.ProductRepository" %>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<%
	String cartId = session.getId();
%>
<title>장바구니</title>
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
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">장바구니</h1>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<table width="100%">
				<tr>
					<td align="left"><a href="./deleteCart.jsp?cartId=<%=cartId %>" class="btn btn-danger">삭제하기</a></td>
					<td align="right"><a href="./shippingInfo.jsp?cartId=<%=cartId %>" class="btn btn-success">주문하기</a></td>
				</tr>
			</table>
		</div>
		<div style="padding-top: 50px">
			<table class="table table-hover">
				<tr>
					<th>상품</th>
					<th>가격</th>
					<th>수량</th>
					<th>소계</th>
					<th>비고</th>
				</tr>
				<%@ include file="dbconn.jsp" %>
		<!-- 추가 -->		
				<%
					String productId = request.getParameter("id");
					
					PreparedStatement pstmt = null;
					ResultSet rs = null;
					
					String sql = "select * from product where p_id = ?";
					pstmt = conn.prepareStatement(sql);
					pstmt.setString(1, productId);
					rs = pstmt.executeQuery();
					if(rs.next()){
				%>
		<!-- 여기까지 -->
				<%
					int sum = 0;
					ArrayList<Product> cartList = (ArrayList<Product>)session.getAttribute("cartlist");
					if(cartList == null)
						cartList = new ArrayList<Product>();
					
					for(int i=0;i<cartList.size();i++){	//상품 리스트 하나씩 출력하기
						Product product = cartList.get(i);
						int total = rs.getInt("p_UnitPrice")* rs.getInt("p_Quantity");
						sum = sum + total; 
				%>
				<tr>
					<td><%=rs.getString("p_id") %> - <%=rs.getString("p_name") %></td>
					<td><%=rs.getInt("p_UnitPrice") %></td>
					<td><%=rs.getInt("p_Quantity") %></td>
					<td><%=total %></td>
					<td><a href="./removeCart.jsp?id=<%=rs.getString("p_id") %>" class="badge badge-danger">삭제</a></td>
				</tr>
				<% 
					} 
				%>
				<tr>
					<th></th>
					<th></th>
					<th>총액</th>
					<th><%= sum %></th>
					<th></th>
				</tr>
			</table>
			<%} %>
			<a href="./products.jsp" class="btn btn-secondary">&laquo; 쇼핑 계속하기</a>
		</div>
		<hr>
	</div>
	<jsp:include page ="footer.jsp" />
</body>
</html>