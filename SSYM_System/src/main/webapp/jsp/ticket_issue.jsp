<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="../protected/static/css/reset.css">
<link rel="stylesheet" type="text/css"
	href="../protected/static/css/ticket_issue.css">
</head>
<body>
<%@ include file="./header.jsp" %>
 <form action="" method="post">

         題名<span style="color: #f00;">*</span><input id="title" type="text" name="title" value="">
        <p id="explanation">説明</p>
        <textarea name="comment" id="comment" cols="120" rows="10"></textarea><br>
        <div id="flex_box">
            <aside>
                ステータス<span style="color: #f00;">*</span>
                <select name="status" id="status">
                    <option value="1">サンプル1</option>
                </select><br>
                優先度<span style="color: #f00;">*</span>
                <select name="priority" id="priority">
                    <option value="2">サンプル2</option>
                </select><br>

                担当者<span style="color: #f00;">*</span>
                <select name="responsible_person" id="responsible_person">
                    <option value="3">サンプル3</option>
                </select>
            </aside>
            <article>
                <label for="search">親チケット</label>
                <input type="search" name="search" id="search" value="" placeholder="キーワードを入力"><br>
                
                <label for="start_date">開始日</label>
                <input id="start_date" type="date" name="start_date"><br>
                
                <label for="due_date">期日</label>
                <input id="due_date" type="date" name="due_date"><br>
                
                <label for="labor_cost">予定工数</label>
                <input id="labor_cost" type="text" name="labor_cost">時間<br>
                
                <label for="progress">進捗率</label>
                <select name="progress" id="progress">
                    <option value="4">サンプル%</option>
                </select>
            </article>
        </div>
    </form>
	
</body>
</html>