<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="script/member.js"></script>
<link type="stylesheet" href="css/login.css">
</head>
<body>
	<h2> 로그인 </h2>
	<form action="MemberServlet" method="post" name="frm">
		<input type="hidden" name="command" value="member_login">
		<table>
			<tr>
				<td> 아이디 </td>
				<td> <input type="text" name="id" value="${member.id}"> </td>
			</tr>
			<tr>
				<td> 암호 </td>
				<td> <input type="password" name="pass"> </td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="submit" value="로그인" onclick="return loginCheck()">&nbsp;&nbsp;
					<input type="reset" value="취소">&nbsp;&nbsp;
					<input type="button" value="회원 가입"
					onclick="location.href='MemberServlet?command=memeber_join'">
				</td>
			</tr>
			<tr>
				<td colspan="2">
					${message}
				</td>
			</tr>
		</table>
	</form>
</body>
</html>