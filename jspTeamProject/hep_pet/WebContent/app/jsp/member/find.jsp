<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/app/html/member/css/find.css">
</head>
<body>

<%@ include file="/app/jsp/fix/header.jsp" %>




<!-- 전체 부분 -->
	<div id="wrap">
	
	
	<!-- 페이지 네비게이션 -->
        <div class="pageNavigation">
            <div class="location">
                <a href="index.jsp" class="home"><span>홈 ></span></a>
                <a href="find.jsp"><span>아이디/패스워드찾기</span></a>
            </div>
        </div>
        
        <!-- 아이디 패스워드찾기 -->
        <div id="title_wrap">
        	<h1 class="idPw_title">아이디/비밀번호 찾기</h1>
        </div>
		<div id="wrapper">
			<div id="contents">
				<h3 id="id">아이디찾기</h3>
				<div class="id_find_wrap">
					<input type="text" id="name" placeholder="이름">
				</div>
				<div>
					<label for="email"></label> <br> 
					<input type="text" id="email" placeholder="가입메일주소">
				</div>
				<br>
				<div>
					<input type="button" id="findid" value="아이디 찾기">
				</div>
			</div>
			<div id="content">
				<h3>비밀번호 찾기</h3>
				<div>
					<input type="text" id="name" placeholder="아이디">
				</div>
				<div>
					<label for="email"></label> <br> <input type="text"
						id="email" placeholder="가입메일주소">
				</div>
				<br>
				<div>
					<input type="button" id="password" value="비밀번호 찾기">
				</div>
			</div>
		</div>
	</div>
</body>
</html>