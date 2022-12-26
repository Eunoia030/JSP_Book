<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>책 등록</title>
<link rel="stylesheet" type="text/css" href="css/book.css">
<script type="text/javascript" src="script/book.js"></script>
</head>
<body>

<div id="wrap" align="center">
<h1>도서 등록</h1>
<form name="frm" method="post" action="BookServlet">
			<input type="hidden" name="command" value="book_register">
			<table>
		<tr>
			<th>책이름</th>
			<td><input type="text" name="title">*필수</td>
		</tr>
		<tr>
			<th>가격</th>
			<td><input type="text" name="price">*필수</td>
		</tr>
		<tr>
			<th>줄거리</th>
			<td><textarea cols="70" rows="15" name="summary"></textarea></td>
		</tr>	
		<tr>
			<th>저자</th>
			<td><input type="text" name="author">*필수</td>
		</tr>
		<tr>
			<th>출판사</th>
			<td><input type="text" name="pub">*필수</td>
		</tr>	
		<tr>
			<th>카테고리</th>
			<td><input type="text" name="category">*필수</td>
		</tr>						
	</table>
	<br><br>
	<input type = "submit" value="등록" onclick="return bookCheck()">
	<input type = "reset" value="다시 작성">
	<input type = "button" value="목록" onclick="location.href='BookServlet?command=book_list'">
</form>
</div>
</body>
</html>