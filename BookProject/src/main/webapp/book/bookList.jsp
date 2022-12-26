-bookList.jsp-
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>도서 리스트</title>
<link rel="stylesheet" type="text/css" href="css/book.css">
</head>
<body>
	<div id="wrap" align="center">
		<h1> 책 리스트 </h1>
		<table class="list">
			<tr>
				<td colspan="7" style="border: white; text-align: right">
					<a href="BookServlet?command=book_register_form">책 등록</a>
				</td>
			</tr>
			<tr>
				<th>번호</th> <th>카테고리</th> <th>제목</th> <th>가격</th> <th>저자</th> <th>출판사</th> <th>평점</th>
			</tr>
			<c:forEach var="book" items="${booklist}">
				<tr class="record">
					<td> ${book.num} </td>
					<td> ${book.category} </td>
					<td> 
						<a href="BookServlet?command=book_detail&num=${book.num}">
								${book.title}
						</a>
					</td>
					<td> ${book.price} </td>
					<td> ${book.author} </td>
					<td> ${book.pub} </td>
					<td> ${book.grade} </td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>