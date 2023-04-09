<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<!-- メタデータ -->
<meta charset="UTF-8">

<!-- タイトル -->
<title>ログイン画面</title>

<!-- CSS -->
<link rel="stylesheet" type="text/css" href="../protected/static/css/reset.css"></link>
<link rel="stylesheet" type="text/css" href="../protected/static/css/icons.css"></link>
<link rel="stylesheet" type="text/css" href="../protected/static/css/login.css"></link>

<!-- JS -->
<script type="text/javascript" src="../protected/static/js/jquery-3.6.3.min.js"></script>
<script type="text/javascript" src="../protected/static/js/login.js"></script>

</head>
	
	<body>
		<%@ include file="header.jsp"%>
		<main>
				<div id="loginInputs">
					<p>ログインID</p>
					<input id="longinId"><br>
					
					<p>パスワード</p>
						<input id="longinPw" type="password" name="password">
						<div id="eye_icon" class="eye icon"></div>
					<button class="btn btn-radius-solid js-next-btn" href="#">確認<i class="fas fa-angle-right fa-position-right"></i></button>	
				</div>
		</main>
		<script>
		$(function() {
			do_show();
		});
	</script>
 	</body>
</html>