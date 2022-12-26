<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>책 수정</title>
<link rel="stylesheet" type="text/css" href="css/book.css">
<script type="text/javascript" src="script/book.js"></script>
</head>
<body>
	<div id="wrap" align="center">
		<h1>책 수정</h1>
		<form name="frm" method="post" action="BookServlet">
			<input type="hidden" name="command" value="book_update"> <input
				type="hidden" name="num" value="${book.num}">
			<table>
				<tr>
					<th>카테고리</th>
					<td><input type="text" size="40" name="category"
						value="${book.category}"></td>
				</tr>
				<tr>
					<th>제 목</th>
					<td><input type="text" size="40" name="title"
						value="${book.title}"></td>
				</tr>
				<tr>
					<th>가 격</th>
					<td><input type="text" size="40" name="price"
						value="${book.price}"></td>
				</tr>
				<tr>
					<th>줄거리</th>
					<td><textarea rows="10" cols="110" name="summary">${book.summary}</textarea></td>
				</tr>
				<tr>
					<th>작 가</th>
					<td><input type="text" size="40" name="author"
						value="${book.author}"></td>
				</tr>
				<tr>
					<th>출판사</th>
					<td><input type="text" size="40" name="pub"
						value="${book.pub}"></td>
				</tr>
				<tr>
					<th>평 점</th>
					<td><input type="text" size="40" name="grade"
						value="${book.grade}"></td>
				</tr>
				<tr>
					<th>사 진</th>9
					<td><input type="file" name="pictureurl"></td>

				</tr>
				<br>
			</table>
			<br> <br> <input type="submit" value="수정"
				onclick="return bookCheck()"> <input type="reset" value="취소">
			<input type="button" value="글목록"
				onclick="location.href='BookServlet?command=book_list'">
		</form>
	</div>
</body>
</html>