<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>1:1 온라인 문의</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/onlineQ&A.css"> 
<script src="https://code.jquery.com/jquery-1.12.0.min.js"></script>
</head>
<body>
    <!-- Header -->
    <div class="main_page_wrap">
        <div id="header_wrap" >
            <div class="header_fixed">
                <div class="header_flex">
                   <!--시작-->
                    <div class="header_util"><span><a href="./member/login.html">로그인</a> <a href="#">회원가입</a></span></div>
                    <div class="header_logo"><h1><a>로고자리</a></h1></div>

                    <div class="header_search"><input type="search" name="#"></div>
                </div> 
            <!--헤더 로그인 회원가입 검색 버튼  -->
            <nav class="heaver_nav">
              

                <ul class="nav_header">
                    <li class="nav_header_li" ><span>신고 및 제보</span>
                        <ul class="nav_sub_header" >
                            <li class="nav_sub_header_li"  id="cat"> <a href="https://www.naver.com/">목격제보</a></li>
                            <li class="nav_sub_header_li"> <a href="https://www.naver.com/">보호</a></li>
                            <!-- <li class="nav_sub_header_li"> <a href="https://www.naver.com/">test1</a></li> -->
                        </ul>
                    </li>

                    <li class="nav_header_li"><span>보호중(조회)
                    </span>
                        <ul class="nav_sub_header"> 
                            <li class="nav_sub_header_li" ><a>유기동물 조회</a></li>
                            <li class="nav_sub_header_li" ><a>보호소센터 조회</a></li>
                            <!-- <li class="nav_sub_header_li" ><a>33</li> -->
                        </ul>
                    </li>

                    <li class="nav_header_li"><span>커뮤니티</span>
                        <ul class="nav_sub_header">
                            <li class="nav_sub_header_li"><a>후기</a></li>
                            <li class="nav_sub_header_li"><a>동물자랑</a></li>
                            <!-- <li class="nav_sub_header_li"><a></a>33</li> -->
                        </ul>
                    </li>

                    <li class="nav_header_li"><span>함께해요</span>
                        <ul class="nav_sub_header">
                            <li class="nav_sub_header_li"><a>봉사</a></li>
                            <li class="nav_sub_header_li"><a>후원(미정)</a></li>
                            <!-- <li class="nav_sub_header_li">33</li> -->
                        </ul>
                    </li>

                    <li class="nav_header_li"><span>Q&A
                    </span>
                        <ul class="nav_sub_header">
                            <li class="nav_sub_header_li"><a>문의사항</a></li>
                            <li class="nav_sub_header_li"><a>자주하는 질문</a></li>
                            <!-- <li class="nav_sub_header_li">33</li> -->
                        </ul>
                    </li>
                    <li class="nav_header_li"><span>발견위치
                    </span>
                        <ul class="nav_sub_header">
                            <li class="nav_sub_header_li"><a>맵핑</a></li>
                            <li class="nav_sub_header_li"><a>자주하는 질문</a></li>
                            <!-- <li class="nav_sub_header_li"><a>33</a></li> -->
                        </ul>
                    </li>
                </ul>
            </nav>
            </div>
            </div>
            </div>

    <!-- Top -->
    <header>
        <div class="img">
            <div class="inner_txt">
                <h2>1:1 온라인 문의</h2> 
                <p>문의사항을 남겨주시면 빠른 시간에 답변드리겠습니다.</p>
            </div>
        </div>
    </header>

    <!-- Middle -->
    <form class="wrap" name="inputForm">
        <div class="wrap_mid">
            <strong class="tit">연락 받으실 정보를 남겨주세요.
                <span class="necessary"><b>*필수</b>
                    입력 정보
                </span>
            </strong>
            <table class="info" border="1px">
                <tr class="line">
                    <td class="col1"><label for="userName" class="userName" >이름</label></td>
                    <p id="nameCheck"></p>
                    <td class="col2">
                        <input type="text" name="input" class="input">
                        <img src="" alt="">
                    </td>
                </tr>
                <tr>
                    <td class="col1"><label for="userEmail" class="userEmail"></label>이메일</td>
                    <p id="emailCheck"></p>
                    <td class="col2">
                        <input type="text" name="input" class="input">
                    </td>
                </tr>
                <tr>
                    <td class="col1"><label for="userTitle"></label>제목</td>
                    <td class="col2">
                        <input type="text" name="input" class="input">
                    </td>
                </tr>
                <tr>
                    <td class="col1"><label for="userContent" class="userContent"></label>문의내용</td>
                    <p id="contentCheck"></p>
                    <td class="col2">
                        <textarea name="userContent" id="userContent" cols="30" rows="10">
                        </textarea>
                    </td>
                </tr>
            </table>
            <br>
        <div class="btn">
            <input type="button" class= "submit_btn" value="확인" onclick="check()">
        </div>
        </div> 
    </form>
    <!-- Footer -->
<script src="${pageContext.request.contextPath}/assets/js/onlineQ&A.js"></script>
</body>
</html>