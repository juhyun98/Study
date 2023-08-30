<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="bbs.Bbs"%>
<%@ page import="bbs.BbsDAO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FriendsFit</title>
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/slideStyle.css">
<link rel="stylesheet" href="css/communityClick.css">


</head>
<body>
	<%
	String userID = null; // 로그인이 된 사람들은 로그인정보를 담을 수 있도록한다
	if (session.getAttribute("userID") != null) {
		userID = (String) session.getAttribute("userID");
	}
	int bbsID = 0;
	if (request.getParameter("bbsID") != null) {
		bbsID = Integer.parseInt(request.getParameter("bbsID"));
	}
	if (bbsID == 0) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('유효하지 않은 글입니다')");
		script.println("location.href = 'community.jsp'");
		script.println("</script>");
	}
	Bbs bbs = new BbsDAO().getBbs(bbsID);
	%>
	<div id="whole">
		<div id="mainframe">
			<div id="main-content">
				<div id="header">
					<div class="top-header">
						<img src="img/FFlogo.png" alt="friendsfit-logo"
							style="cursor: pointer" onclick="location.href='index.jsp'">
						<!-- <h1>Our fit</h1> -->
					</div>
					<div class="button-group">
						<form action="login.html">
							<button type="submit" class="sign-in-button"
								formaction="login.jsp">로그인 / 가입</button>
						</form>
					</div>
				</div>



				<div class="container">
					<div class="row">

						<div class="bbs-title">
							<%= bbs.getBbsTitle().replaceAll(" ","&nbsp;").replaceAll("<","&lt;").replaceAll(">", "&gt;").replaceAll("\n","<br>") %>
						</div>

						<div class="user-info">
							<div class="user-id">
								<%= bbs.getUserID().replaceAll(" ","&nbsp;").replaceAll("<","&lt;").replaceAll(">", "&gt;").replaceAll("\n","<br>") %>
							</div>
							<div class="user-divider">·</div>
							<div class="community-day">
								<%= bbs.getBbsDate().substring(0,11) + bbs.getBbsDate().substring(11, 13) + "시" 
                + bbs.getBbsDate().substring(14,16) + "분"  %>
							</div>
						</div>

						<div class="bbs-content">
							<div class="content-text">
								<%= bbs.getBbsContent().replaceAll(" ","&nbsp;").replaceAll("<","&lt;").replaceAll(">", "&gt;").replaceAll("\n","<br>") %>
							</div>
						</div>

						<a href="community.jsp" class="btn btn-primary">목록</a> <a
							href="update.jsp?bbsID=<%=bbsID %>" class="btn btn-primary">수정</a>
						<a href="deleteAction.jsp?bbsID=<%=bbsID %>"
							class="btn btn-primary">삭제</a>

					</div>
					<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
					<script src="js/bootstrap.js"></script>

					<div id="main" class="main-content"></div>

					<div id="footer" class="footer-content">
						<h1>FriendsFit</h1>
						피트니스크루<br> 팀장 김대현: ysm691611@naver.com<br> 변지협 오주현 류혜림
						염다영<br> 인공지능사관학교<br> @all rights reserved+
					</div>
				</div>



				<div id="main-navbar" class="navbar">
					<ul class="navbar-ul">
						<li class="navbar-li1 navbar-li"><img src="img/nav_home.svg"
							alt="home icon" width="24" height="24" style="cursor: pointer"
							onclick="location.href='index.jsp'"> <br>홈</li>
						<li class="navbar-li2 navbar-li"><img src="img/nav_map.svg"
							alt="map icon" width="24" height="24" style="cursor: pointer"
							onclick="location.href='map.jsp'"> <br>지도</li>
						<li class="navbar-li3 navbar-li"><img src="img/nav_commu.svg"
							alt="community icon" width="24" height="24"
							style="cursor: pointer" onclick="location.href='community.jsp'">
							<br>커뮤니티</li>
						<li class="navbar-li4 navbar-li"><img src="img/nav_col.svg"
							alt="column icon" width="24" height="24" style="cursor: pointer"
							onclick="location.href='column.jsp'"> <br>컬럼</li>
						<li class="navbar-li5 navbar-li"><img
							src="img/nav_review.svg" alt="review icon" width="24" height="24"
							style="cursor: pointer" onclick="location.href='review.jsp'">
							<br>ocr리뷰</li>
					</ul>
				</div>
			</div>
		</div>
</body>
</html>
