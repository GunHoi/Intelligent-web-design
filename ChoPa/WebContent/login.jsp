<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<title>Login</title>
</head>
<body>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">로그인</h1>
				<div class="text-right">
						<a href="./main.jsp">메인</a>
				</div>
		</div>
	</div>
	<div class="container" align="center">
		<div class="col-me-4 col-md-offset-4">
			<h3 class="form-signin-heading">Pleas sign in</h3>
			<%
				String error=request.getParameter("error");
				if(error!=null){
					out.println("<div class='alert alert-danger'>");
					out.println("아이디와 비밀번호를 확인해주세요");
					out.println("</div>");
				}
			%>
		<!-- 로그인 양식 -->
			<div class="container">		<!-- 하나의 영역 생성 -->
				<div class="col-lg-4">	<!-- 영역 크기 -->
					<!-- 점보트론은 특정 컨텐츠, 정보를 두드러지게 하기 위한 큰 박스 -->
					<div class="jumbotron" style="padding-top: 20px;">
						<form method="post" action="loginAction.jsp">
							<h3 style="text-align: center;">로그인 화면</h3>
							<div class="form-group">
								<input type="text" class="form-control" placeholder="아이디" name="userID" maxlength="20">
							</div>
							<div class="form-group">
								<input type="password" class="form-control" placeholder="비밀번호" name="userPassword" maxlength="20">
							</div>
							<hr>
							<input type="submit" class="btn btn-primary form-control" value="로그인">
							<hr>
							<a href="./join.jsp" class="btn btn-secondary form-control">회원가입</a>
						</form>
					</div>
				</div>	
			</div>
		</div>
	</div>
</body>
</html>