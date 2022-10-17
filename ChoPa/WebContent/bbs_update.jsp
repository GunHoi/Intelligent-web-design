<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="bbs.Bbs" %>
<%@ page import="bbs.BbsDAO" %>

<html>
<head>
<!-- 루트 폴더에 부트스트랩을 참조하는 링크 -->
	<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<title>JSP 게시판 웹 사이트</title>
</head>
<body>
	<%
		// 세션에 값이 담겨있는지 체크
		String userID = null;
		if(session.getAttribute("userID") != null){
			userID = (String)session.getAttribute("userID");
		}
		if(userID == null){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('로그인을 하세요')");
			script.println("location.href='login.jsp'");
			script.println("</script>");
		}
		int bbsID = 0;
		if(request.getParameter("bbsID") != null){
			bbsID = Integer.parseInt(request.getParameter("bbsID"));
		}
		if(bbsID == 0){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('유효하지 않은 글입니다')");
			script.println("location.href='bulletinBoards.jsp'");
			script.println("</script>");
		}
		//해당 'bbsID'에 대한 게시글을 가져온 다음 세션을 통하여 작성자 본인이 맞는지 체크한다
		Bbs bbs = new BbsDAO().getBbs(bbsID);
		if(!(userID.equals(bbs.getUserID())||userID.equals("admin"))){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('권한이 없습니다')");
			script.println("location.href='bulletinBoards.jsp'");
			script.println("</script>");
		}
	%>
	<%
		userID = null;
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
	<!-- 게시판 글 수정 양식 영역 시작 -->
	<div class="container">
		<div class="row">
			<form method="post" action="bbs_updateAction.jsp?bbsID=<%= bbsID %>">
				<table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
					<thead>
						<tr>
							<th colspan="2" style="background-color: #eeeeee; text-align: center;">게시판 글 수정 양식</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><input type="text" class="form-control" placeholder="글 제목" name="bbsTitle" maxlength="50"
								value="<%=bbs.getBbsTitle() %>"></td>
						</tr>
						<tr>
							<td><textarea class="form-control" placeholder="글 내용" name="bbsContent" maxlength="2048"
								style="height: 350px;"><%=bbs.getBbsContent() %></textarea></td>
						</tr>
					</tbody>
				</table>
				<!-- 글쓰기 버튼 생성 -->
				<input type="submit" class="btn btn-primary pull-right" value="수정하기 ">
			</form>
		</div>
	</div>
	<!-- 게시판 글 수정 양식 영역 끝 -->
</body>
</html>