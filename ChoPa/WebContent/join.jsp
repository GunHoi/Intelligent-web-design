<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<title>Join</title>
</head>
<body>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">회원가입</h1>
				<div class="text-right">
						<a href="./main.jsp">메인</a>┃
						<a href="./login.jsp">로그인</a>
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
		<!-- 회원가입 양식 -->
			<div class="container">		<!-- 하나의 영역 생성 -->
				<div class="col-lg-4">	<!-- 영역 크기 -->
					<!-- 점보트론은 특정 컨텐츠, 정보를 두드러지게 하기 위한 큰 박스 -->
					<div class="jumbotron" style="padding-top: 20px;">
						<form method="post" action="joinAction.jsp">
							<h3 style="text-align: center;">회원가입 화면</h3>
							<div class="form-group">
								<input type="text" class="form-control" placeholder="아이디" name="userID" maxlength="20">
							</div>
							<div class="form-group">
								<input type="password" class="form-control" placeholder="비밀번호" name="userPassword" maxlength="20">
							</div>
							<div class="form-group">
								<input type="text" class="form-control" placeholder="이름" name="userName" maxlength="20">
							</div>
							<div class="form-group" style="text-align: center;">
								<div class="btn-group" data-toggle="buttons">
									<label class="btn btn-primary active">
										<input type="radio" name="userGender" autocomplete="off" value="남자" checked>남자
									</label>
									<label class="btn btn-primary active">
										<input type="radio" name="userGender" autocomplete="off" value="여자" checked>여자
									</label>
								</div>
							</div>
							<div class="form-group">
								<input type="email" class="form-control" placeholder="이메일" name="userEmail" maxlength="20">
							</div>
							<input type="submit" class="btn btn-primary form-control" value="회원가입">

						</form>
					</div>
				</div>	
			</div>
		</div>
	</div>
</body>
</html>