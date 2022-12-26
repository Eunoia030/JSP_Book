<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 페이지</title>
<script type="text/javascript" src="script/member.js"></script>

</head>
<body>
	<h3>Book 회원가입</h3>
	<form action="join.do" method="post" name="frm">
		<table>
			<thead>정보를 입력해 주세요.</thead>
			<tr>
				<td>아이디</td>
			</tr>
			<tr>
			<td>
				<input type="text" name="id"  placeholder="4~15자리 영소문자, 숫자">*
				<input type="hidden" name="id2">&nbsp;
				<input type="button" value="중복확인" onclick="location.href='MemberServlet?command=id_check()">
				</td>
			</tr>
			<tr>
				<td>비밀번호</td>
			</tr>
			<tr>
				<td><input type="password" name="pass">*</td>
			</tr>
			<tr>
				<td>비밀번호 재입력</td>
			</tr>
			<tr>
				<td><input type="password" name="pass2">*</td>
			</tr>
			<tr>
				<td>이름</td>
			</tr>
			<tr>
				<td><input type="text" name="name">*</td>
			</tr>
			<tr>
				<td>필수 전화번호</td>
			<tr>
			<td><input type="text" name="phone" placeholder="010-xxxx-xxxx"></td>
			</tr>
			<tr>
				<td>이메일</td>
			</tr>
			<tr>
				<td><input type="email" name="email"></td>
			</tr>
			<tr>
				<td><input type="hidden" id="webLoginType" name="webLoginType" value="B">
				<!-- A= 관리자 // B = 일반회원 //가입시, 일반회원 권한주기 -->
				
			</tr>
			<tr>
				<td><input type="submit" value="가입 완료" onclick="location.href='MemberServlet?command=member_join"></td>
				<!--
				<td><input type="reset" value="다시작성"></td>
				<td><input type="button" value="돌아가기"	onclick="location.href='MemberServlet?command=book_main'"></td>
				 -->
			</tr>
			<tr>
				<td colspan="2">${message }</td>
			</tr>
		</table>
	</form>
</body>
</html>