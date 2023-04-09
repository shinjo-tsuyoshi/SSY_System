<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<!-- CSS 読み込み -->
		<link rel="stylesheet" type="text/css" href="../protected/static/css/reset.css"></link>
		<!-- <link rel="stylesheet" type="text/css" href="../protected/static/css/headerIcons.css"></link> -->
		<link rel="stylesheet" type="text/css" href="../protected/static/css/header.css"></link>
		<!-- js 読み込み -->
		<script type="text/javascript" src="../protected/static/js/jquery-3.6.3.min.js"></script>
	</head>
<body>
	<!-- header -->
	<div id="headerBgColor">
		<div id="headerContainer">
			<div id="DlLogo">
				<img alt="" src="../protected/static/img/DRIVELINR_Logo/DL_Logo2.ico"><!-- DRIVELINE_LOGO -->
				<p id="headerTitle">SSYM - P i P P i</p>
			</div>
			<div id="hamburgerMenu">
				<div class="menu headerIcon"></div>
			</div>
			
		</div>
	</div>
	<!-- メニュー表示時 -->
	<div id="menus">
		<ul id="headerMenu">
			<li><a href="./ticket_list.jsp">TOP</a></li>
			<li><a href="./ticket_issue.jsp">チケット</a></li>
			<li><a href="./ticket_list.jsp">一覧</a></li>
			<li><a href="./login.jsp">ログアウト</a></li>
		</ul>
	</div>
	
	
	<script type="text/javascript" src="../protected/static/js/header.js"></script>
</body>
</html>