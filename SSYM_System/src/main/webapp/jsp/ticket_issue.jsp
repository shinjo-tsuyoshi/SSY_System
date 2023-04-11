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
  <main id="formArea">
        <form action="" method="post">

            題名<span style="color: #f00;">*</span><input id="title" type="text" name="title" value="">
            <p id="explanation">説明</p>
            <textarea name="comment" id="comment" cols="120" rows="10"></textarea><br>
            <div id="flexBox">
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
                    <select name="responsiblePerson" id="responsiblePerson">
                        <option value="3">サンプル3</option>
                    </select>
                </aside>
                <article>
                    <label for="search">親チケット</label>
                    <input type="search" name="search" id="search" value="" placeholder="キーワードを入力"><br>

                    <label for="startDate">開始日</label>
                    <input id="startDate" type="date" name="startDate"><br>

                    <label for="dueDate">期日</label>
                    <input id="dueDate" type="date" name="dueDate"><br>

                    <label for="laborCost">予定工数</label>
                    <input id="laborCost" type="text" name="laborCost">時間<br>

                    <label for="progress">進捗率</label>
                    <select name="progress" id="progress">
                        <option value="4">サンプル%</option>
                    </select>
                </article>
            </div>
            <input type="submit" name="submit" id="submit" value="作成">
        </form>
    </main>
</body>
</html>