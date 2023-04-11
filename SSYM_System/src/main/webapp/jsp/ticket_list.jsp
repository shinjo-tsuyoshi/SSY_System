<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>チケット一覧画面</title>
		<!-- css読み込み -->
		<link rel="stylesheet" type="text/css" href="../protected/static/css/ticket_list.css"></link>
		<!-- js読み込み -->
		<script type="text/javascript" src="../protected/static/js/jquery-3.6.3.min.js"></script>
		<script type="text/javascript" src="../protected/static/js/ticket_list.js"></script>
	</head>
	<body>
		<!-- header読み込み -->
		<%@ include file="./header.jsp" %>
		
		
		<p id="tlTitle">チケット</p>
		<!-- フィルター -->
		<details open>
			<summary class="tlSection">フィルター</summary>
			<div>
				<label><input id="test" type="checkbox" name="status" value="1">ppupuu</label>
				<p>ステータス</p>
			</div>
		</details>
		
		<!-- フィルター追加 -->
		<div id="addSerchItem">
			<button>フィルタ追加</button>
			<select>
				<option value="test1" label="テスト１">テスト１</option>
				<option value="test2" label="テスト２">テスト２</option>
			</select>
		</div>
		
		
		<table>
			<tr>
				<th>チェックボックス</th>
				<th>id</th>
				<th>トラッカー</th>
				<th>ステータス</th>
				<th>進捗率</th>
				<th>担当者</th>
				<th>題名</th>
				<th>期日</th>
				<th>対象バージョン</th>
				<th>優先度</th>
			</tr>
			<!-- SQLから引っ張ってループで回す -->
			<tr>
				<td>test</td>
				<td>test</td>
				<td>test</td>
				<td>test</td>
				<td>test</td>
				<td>test</td>
				<td>test</td>
				<td>test</td>
				<td>test</td>
				<td>test</td>
			</tr>
		</table>
	
	</body>
</html>