<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.Date" %>
<%@page import="java.io.PrintWriter"%>
<!DOCTYPE html>
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
			<h3 class = "display4 text-center" >
				<%out.print(""+
					"░█████╗░██╗░░██╗░█████╗░██████╗░░█████╗░<br>"+
					"██╔══██╗██║░░██║██╔══██╗██╔══██╗██╔══██╗<br>"+
					"██║░░╚═╝███████║██║░░██║██████╔╝███████║<br>"+
					"██║░░██╗██╔══██║██║░░██║██╔═══╝░██╔══██║<br>"+
					"╚█████╔╝██║░░██║╚█████╔╝██║░░░░░██║░░██║<br>"+
					"░╚════╝░╚═╝░░╚═╝░╚════╝░╚═╝░░░░░╚═╝░░╚═╝"); %> <br>
			</h3>
		</div>
	</div>
	<main role ="main">
		<div class ="container">
			<div class="text-center">
				<h4>
					<% out.print("일하랴,, 육아하랴,,, 많이 힘드셨죠?<br><br>");%>
					<img src="c:/upload/father.gif" width="500" height="500">
				</h4>
				<hr>		
				<h4>
					<%out.print("<br><br>이제 막 아기를 낳은 초보아빠부터 베테랑까지!!<br>");%>
					<img src="c:/upload/baby.jpg" width="300" height="300" style="margin: 20px;">
					<img src="c:/upload/father.jpg" width="300" height="300" style="margin: 20px;">
				</h4>
				<h5>
					<% out.print("모든 아빠들의 정보 공유 장소 ChoPa <br>"); %>
				</h5>
				<h6>
					<% out.print("초보 파파를 위한 아빠들의 공간"); %>
				</h6>				
			</div>
			<div class ="text-right">
				<% 
					//response.setIntHeader("Refresh",5);
					Date day = new java.util.Date();
					String am_pm;
					int hour = day.getHours();
					int minute = day.getMinutes();
					int second = day.getSeconds();
					if (hour/12==0){
						am_pm = "AM";
					} else {
						am_pm = "PM";
						hour = hour -12;
					}
					String CT = hour + ":" + minute +":"+second+" "+am_pm;
					out.println("현재 접속 시각: "+CT+"\n");
				%>
				
				<hr>
			</div>
		</div>
	</main>
	<%@ include file = "footer.jsp" %>
	
</body>
</html>