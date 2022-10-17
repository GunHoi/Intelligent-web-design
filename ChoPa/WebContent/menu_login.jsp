<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
<nav class = "navbar-expand navbar-dark bg-secondary">
	<div id="header" >
		<div class = "container-fluid">
			<div class="row" style="justify-content:space-between">
					<h1>
						<a href="./main.jsp" style="color: white">
							<img src="https://r67.cooltext.com/rendered/cooltext398644465130358.png" alt="ChoPa" title="ChoPa">
						</a>
					</h1>					
					<div class ="navbar-menu">
							<ul class="row" style="list-style: none;">
								<li style="margin-left:20px;">
									<a class = "navbar-brand" href="./products.jsp">상품</a>
								</li>
								
								<li style="margin-left:20px;">
									<a class = "navbar-brand" href="./bulletinBoards.jsp">게시판</a>
								</li>
								
								<li style="margin-left:20px;">
									<a class = "navbar-brand" href="./menu_add.jsp">등록</a>
								</li>
								
								<li style="margin-left:20px;">
									<a class = "navbar-brand" href="./youtube.jsp">관련영상</a>
								</li>
							</ul>
					</div>
					<div class ="navbar-login">
						<ul class="row" style="list-style: none;margin:30px; float:right;" >							
							<li style="margin-left:20px;">	
							<%=(String)session.getAttribute("userID")+"님" %>										
								<a href="./logout.jsp" style="color: white">로그아웃</a>
							</li>							
						</ul>
					</div>
				</div>
			</div>
		</div>
	</nav>
</body>
</html>