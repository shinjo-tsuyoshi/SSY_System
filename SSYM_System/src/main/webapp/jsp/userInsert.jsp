<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>新規登録画面</title>

<!-- CSS -->
<link rel="stylesheet" type="text/css" href="../protected/static/css/icons.css"></link>
<link rel="stylesheet" type="text/css" href="../protected/static/css/login.css"></link>
<link rel="stylesheet" type="text/css" href="../protected/static/css/commonPss.css"></link>

<!-- JS -->
<script type="text/javascript" src="../protected/static/js/jquery-3.6.3.min.js"></script>
<script type="text/javascript" src="../protected/static/js/login.js"></script>

</head>
	<%@ include file="header.jsp"%>
		<main id="mainLogin">
			<div id="loginTop">
				<div id="loginInputs">
					<p>ユーザーID</p>
					<input id="userInsertId"><br>
					<div id="pwBox">
					<!-- 全角スペースがないとアイコンの場所がズレる -->
						<p>パスワード　</p><div id="eye_icon" class="eye icon"></div>
					</div>
					<input id="userInsertPw" type="password" name="password">
					<button id="js-insert-btn" href="#">登録<i id="fas"></i></button>	
				</div>
			</div>
		</main>
		<script>
		$(function() {
			do_show();
		});
	</script>
 	</body>
</html>