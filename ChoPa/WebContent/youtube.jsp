<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="bbs.BbsDAO" %>
<%@ page import="bbs.Bbs" %>
<%@ page import="java.util.ArrayList" %>
<html>
<head>
	<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<title>게시판</title>
</head>
<body bgcolor="#CCFF33">
	<%
		// 메인 페이지로 이동했을 때 세션에 값이 담겨있는지 체크
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
	int pageNumber = 1; //기본은 1 페이지를 할당
	// 만약 파라미터로 넘어온 오브젝트 타입 'pageNumber'가 존재한다면
	// 'int'타입으로 캐스팅을 해주고 그 값을 'pageNumber'변수에 저장한다
	if(request.getParameter("pageNumber") != null){
		pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
	}
	%> 	
<!-- 게시판 메인 페이지 영역 시작 -->
	<div class="container">
		<div class="row">
					<div style="float: left; width: 25%; margin: 20px;">
						<a href="https://www.ei.go.kr/ei/eih/eg/pb/pbPersonBnef/retrievePb0302Info.do">
							<img src="https://t1.daumcdn.net/cfile/tistory/99FB394B5EDC4D4430" style="width: 100%"> 
								육아휴직
						</a>
					</div>　
					<div style="float: left; width: 25%; margin: 20px;">
						<a href="https://linktr.ee/papanet4you">
							<img src="https://blogpfthumb-phinf.pstatic.net/MjAyMDAzMTFfMTQ3/MDAxNTgzODkwODkwMDAx.fPTnkrwb50EXyCxL11r1wPikxPeqG2mcT1ByN3M_Zaog.IVNhW8-Wr2VEo5GPB1L0CjPBaS0OYRCyNOWurIeVwk0g.PNG.papanet4you/%25BE%25C6%25BA%25FC%25B3%25DD-%25B7%25CE%25B0%25ED-1.png?type=w161" style="width: 100%"> 
								아빠넷
						</a>
					</div>　
					<div style="float: left; width: 25%; margin: 20px;">
						<a href="https://blog.naver.com/papanet4you">
							<img src="https://blogpfthumb-phinf.pstatic.net/MjAyMDAzMTFfMTQ3/MDAxNTgzODkwODkwMDAx.fPTnkrwb50EXyCxL11r1wPikxPeqG2mcT1ByN3M_Zaog.IVNhW8-Wr2VEo5GPB1L0CjPBaS0OYRCyNOWurIeVwk0g.PNG.papanet4you/%25BE%25C6%25BA%25FC%25B3%25DD-%25B7%25CE%25B0%25ED-1.png?type=w161" style="width: 100%"> 
								아빠넷(공식 블로그)
						</a>
					</div>　
					<div style="float: left; width: 25%; margin: 20px;">
						<a href="https://cafe.naver.com/healthyppl">
							<img src="c:/upload/hello.png" style="width: 100%"> 
								헬로 프렌디 (네이버 대표 아빠 카페)
						</a>
					</div>　
					<div style="float: left; width: 25%; margin: 20px;">
						<a href="http://gangnam.go.kr/pitapatgn/1708_daddychildcare.html#contbox-0202">
							<img src="https://t1.daumcdn.net/cfile/tistory/9944BA3359B0AAA226" style="width: 100%"> 
								초보아빠를 위한 육아가이드
						</a>
					</div>
					<div style="float: left; width: 25%; margin: 20px;">
						<a href="https://www.youtube.com/channel/UC1GPmJkgndmukEMQrqrfaNw">
							<img src="c:/upload/ebs.jpg" style="width: 100%"> 
								EBS 육아학교
						</a>
					</div>
					<div style="float: left; width: 25%; margin: 20px;">
						<a href="https://www.youtube.com/channel/UCqXwKu6dKobXEQFhdKtiJLQ">
							<img src="https://yt3.ggpht.com/ytc/AKedOLRsUL8dwa1h80ZmG_SYjeQqNIrLs8IZTIE_JrbaCQ=s900-c-k-c0x00ffffff-no-rj" style="width: 100%"> 
								핑크퐁 (동요,동화)
						</a>
					</div>
					<div style="float: left; width: 25%; margin: 20px;">
						<a href="https://www.youtube.com/channel/UC-8xPSlb0xDYqSuIWcdcPAQ">
							<img src="https://img.genikids.com/image/geni.jpg" style="width: 100%"> 
								지니키즈 Genikids (동요,동화)
						</a>
					</div>
					<div style="float: left; width: 25%; margin: 20px;">
						<a href="https://www.youtube.com/channel/UCPUeGC_AL-OnDQORKhRm6iA">
							<img src="https://newsimg.sedaily.com/2021/04/03/22KXWN5X2Q_2.jpg" style="width: 100%"> 
								뽀로로
						</a>
					</div>															　		
								
		</div>
	</div>
	<!-- 게시판 메인 페이지 영역 끝 -->
	
</body>
</html>