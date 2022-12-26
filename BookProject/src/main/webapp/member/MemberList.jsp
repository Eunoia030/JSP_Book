<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset=“UTF-8”>
<title>회원 목록</title>
</head>
<body>
<h1> 회원 목록 </h1>
<div id=“wrap” align=“center”>
   <table class=“list”>
     <tr>
      <td colspan=“6” style=“border: white; text-align: right”>
        <a href=“MemberServlet?command=member_register_form”>회원 등록</a>
      </td>
     </tr>
     <tr>
      <th>번호</th> <th>카테고리</th> <th>제목</th> <th>가격</th> <th>저자</th> <th>출판사</th>
     </tr>
     <c:forEach var=“member” items=“${memberList}“>
      <tr class=“record”>
        <td> ${member.id} </td>
        <td> ${member.pass} </td>
        <td>
         <a href=“MemberServlet?command=member_info_form&id=${member.id}“>
            ${member.name}
         </a>
        </td>
        <td> ${member.phone} </td>
        <td> ${member.email} </td>
        <td> ${member.lev} </td>
      </tr>
     </c:forEach>
   </table>
  </div>
	<%-- <p class=“cls1”>회원정보</p>
	<table align = “center” border=“1”>
		<tr align = “center” >
			<td><b>아이디</b></td>
			<td><b>비밀번호</b></td>
			<td><b>이름</b></td>
			<td><b>전화번호</b></td>
			<td><b>이메일</b></td>
			<td><b>권한</b></td>
		</tr>
		<c:choose>
			<c:when test=“{empty memberList}“>
			 <td colspan=“5” align=“center”>
			 	<b>등록된 회원이 없습니다.</b>	
			 </td>
			 </c:when>
			 <c:when test=“{not empty memberList}“>
			 	<c:forEach var=“member” items=“${memberList}“>
			 		<tr align=“center”>
			 			<td>${member.id}</td>
			 			<td>${member.pass}</td>
			 			<td>${member.name}</td>
			 			<td>${member.phone}</td>
			 			<td>${member.email}</td>
			 			<td>${member.lev}</td>
			 		</tr>
			 	</c:forEach>
			 </c:when>
		 </c:choose>	 			
	</table> --%>
</body>
</html>