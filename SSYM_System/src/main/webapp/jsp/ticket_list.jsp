<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>チケット一覧画面</title>
		<!-- css読み込み -->
		<link rel="stylesheet" type="text/css" href="../protected/static/css/ticket_list.css"></link>
		<!-- js読み込み -->
		<script type="text/javascript" src="../protected/static/js/ticket_list.js"></script>
	</head>
	<body>
		<!-- header読み込み -->
		<%@ include file="./header.jsp" %>
		
		<div id="tlScreenSize">
			<p id="tlTitle">チケット</p>
			<!-- フィルター -->
			<details open>
				<summary class="tlFilter">🔽フィルター</summary>
				<div id="tlSelectDetails">
					<!-- フィルターアイテム -->
					<div id="selectItems"><!-- id「selectItems」の中身をjspでぶち回す -->
						<div class="selectSerchItem">
							<label class="tlSelctFilterItem"><input id="statusCheckBox" type="checkbox" name="status" value="1">ステータス</label>
							<input class="tlListItem" type="text">
						</div>
						<div class="selectSerchItem">
							<label class="tlSelctFilterItem"><input id="nameCheckBox" type="checkbox" name="status" value="1">担当者</label>
							<input class="tlListItem" type="text">
						</div>
					</div>
					
					<!-- フィルター追加 -->
					<div id="addSerchItem">
						<div>フィルタ追加 : </div>
						<select id="tlAddFilterItem" size="1"><!-- id「tlAddFilterItem」の中身をjspでぶち回す -->
							<option value="test1" label="期日"></option>
							<option value="test2" label="ID"></option>
						</select>
						<button>追加</button>
					</div>
				</div>
			</details>
			
			<!-- オプション -->
			<details open>
			<summary class="tlFilter">🔽オプション</summary>
				<div id="tlOpsionDetails">
					<div id="opsionItem">
						<button id="tlDelete">削除</button>
						<button id="tlSort">検索</button>
					</div>
				</div>
			</details>
			
			<table id="tlTicketList">
				<tr>
					<th><input type="checkbox"  value="1" disabled></th>
					<th>ID</th>
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
				<% 
				int i = 0;
				int j = 0;
				for (i = 0; i <= 19 ; i++){ %>
				<tr>
					<td><input type="checkbox"  value="0"></td>
					<td><%= i+1 %></td>
					<%
					for (j = 0; j <= 7; j++){
					%>
					<td>test</td>
					<% } %>
				</tr>
				<% } %>
			</table>
		</div>
	</body>
</html>