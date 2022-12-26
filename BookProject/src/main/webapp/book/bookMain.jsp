-bookMain.jsp-
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" />
<link rel="stylesheet" href="css/main.css">
<script type="text/javascript" src="script/book.js"></script>
</head>
<body>
	<div id="container">
        <header>
            <div id="log">
                <ul>
                    <li><a href="MemberServlet?command=member_login">로그인</a></li>
                    <li><a href="MemberServlet?command=member_join">회원가입</a></li>
                    <!-- <li><a href="MemberServlet?command=member_list">관리자 페이지</a></li> -->
                    <c:if test="${member.lev == 'A'}">
						<li>
					 		<a href="MemberServlet?command=member_list" onclick="buttonClick()">관리자 페이지</a> 
						</li>
					</c:if>
					<c:if test="${member.lev == 'B'}">
						<li>
					 		<a href="MemberServlet?command=member_myPage" onclick="buttonClick()">마이페이지</a> 
						</li>
					</c:if>
                </ul>
            </div>
            <div id="headnav">
                <h1 id="hlogo">
                    <a href="#">
                        <img src="" alt="LOGO">
                    </a>
                </h1>
                <div class="search">
                    <select name="" id="hoption">
                        <option value="통합검색">통합검색</option>
                        <option value="카테고리검색">카테고리검색</option>
                        <option value="제목검색">제목검색</option>
                        <option value="작가검색">작가검색</option>
                    </select>
                    <input type="text" id="hsearch" value="검색할 내용을 입력해주세요">
                </div>
                <div class="mypage">
                    <a href="#">
                    	<i class="fa-solid fa-cart-shopping"></i>
                    </a>
                    <a href="MemberServlet?command=member_mypage">
                    	<i class="fa-solid fa-circle-user"></i>
                    </a>
                </div>
            </div>
            <nav>
            <ul class="hlist1">
                <li><a href="BookServlet?command=book_list">베스트</a></li>
                <li><a href="#">신상품</a></li>
                <li><a href="#">이벤트</a></li>
                <li><a href="#">사은품</a></li>
                <li><a href="#">PICKS</a></li>
                <li><a href="#">CASTing</a></li>
                <li><a href="#">교보ONLY</a></li>
            </ul>
            <ul class="hlist2">
                <li><a href="#">할인혜택</a></li>
                <li><a href="#">출석체크</a></li>
                <li><a href="#">
                    <i class="fa-solid fa-circle-plus"></i>
                </a></li>
            </ul>
        </nav>
        </header>
        <div id="ad">

        </div>
        <section>

        </section>
        <footer>
            <div class="foot1">
                <h1 id="flogo">
                    <a href="#">
                        <img src="" alt="LOGO">
                    </a>
                </h1>
                <div class="foot1-1">
                    <ul>
                        <li><a href="#">회사소개 &#124; </a></li>
                        <li><a href="#">이용약관 &#124; </a></li>
                        <li><a href="#"><b>개인정보처리방침 &#124;</b></a></li>
                        <li><a href="#">청소년보호정책 &#124; </a></li>
                        <li><a href="#">대량주문안내 &#124; </a></li>
                        <li><a href="#">헙력사여러분 &#124; </a></li>
                        <li><a href="#">채용정보 &#124; </a></li>
                        <li><a href="#">광고소개</a></li>
                    </ul>
                </div>
                <div class="foot1-2">
                    <p>대표이사 : 임채리 &#124; 경기 수원시 매산로 1가 &#124; 사업자등록번호 : 000-00-00000<br>
                    대표전화 : 1544-0000(발신자 부담전화) &#124; FAX : 0000-000-0000(지역번호 공통) &#124; 경기도 통신판매업신고번호 : 제 000호<input type="button" value="사업자정보확인"></p>
                    <br>
                    <p>&#169; SAO BOOK CENTRE</p>
                </div>
            </div>
            <div class="foot2">
                <div class="foot2-1">
                    <select name="" id="">
                        <option value="Family Site">Family Site</option>
                        <option value="사오정">사오정</option>
                        <option value="Yes24">Yes24</option>
                    </select>
                    <i class="fa-brands fa-youtube"></i>
                    <i class="fa-brands fa-facebook"></i>
                    <i class="fa-brands fa-instagram"></i>
                </div>
                <div class="foot2-2">
                    <p>LG U+ 구매안전서비스&nbsp;<input type="button" value="서비스 가입 확인"></p>
                    <p>고객님은 안전거래를 위해 현금 등으로 결제시 저희 쇼핑몰에서 가입한<br>
                    LG유플러스의 구매안전서비스를 이용하실 수 있습니다.</p>
                </div>
                <div class="foot2-3">

                </div>
            </div>
        </footer>
    </div>
</body>
</html>