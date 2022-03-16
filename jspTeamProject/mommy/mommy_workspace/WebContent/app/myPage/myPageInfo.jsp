<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<!--
	Exponent by Pixelarity
	pixelarity.com | hello@pixelarity.com
	License: pixelarity.com/license
-->
<html>
	<head>
		<title>마이페이지</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />
        <link href="${pageContext.request.contextPath}/assets/css/myPageInfo.css" rel="stylesheet" type="text/css">
	
        </head>

	
	<body class="is-preload">
	<!-- Header -->
  
		
		
		<!-- Main -->
		
                <!--회원 정보 수정 -->
                <div>
                   <h4 class = "mainTitle"> 회원 정보 수정</h4>
                   <div class = "infoWrapper">
                            <div>
                                <p class="p-font-color">이름</p>
                                <input type="text" class="input-font" style="width: 95%;"value="홍길동">
                            </div>
                                <br>
                  
<!--                            <div>
                                <p class="p-font-color">비밀번호 </p>
                                <input type="password" class="input-font" style="width: 95%;" value="123456789">
                            </div>
                                <br> -->
                            <div>
                                <p class="p-font-color">Email</p>
                                <input type="text" class="input-font" style="width: 95%;" value="alpha@naver.com">
                            </div>
                            <br>
                            <div>
                                <p class="p-font-color">휴대폰번호</p>
                                <div style = "display:flex;">
                                <input type="text" class="input-font" style="width: 75%;" value="01038381212">
                                <button class = "phoneBtn" onclick="showPopup();">인증하기</button>
                                </div>
                            </div>
                            <br>
                               <!--  인증번호를 받으면 나오게 구현 -->
                            <div>
                                <div style = "display:flex;">
                                <input type="text" class="input-font" style="width: 75%;" placeholder="인증번호를 입력해주세요.">
                                <button class = "phoneBtn" onclick="showPopup();">확인</button>
                                </div>
                            </div>
                         
                            <br>
                                <div> 
                                    <p class="p-font-color">생년월일</p>
                                    <div style = "display:flex;">
                                <input type = "text"  class="input-font" value ="1996" name="birthYear" style="width: 30%; margin-right:2.5%;height: 3em;">
                                <select name = "birthMonth" style="width:30%; margin-right:2.5%;height: 2.75em; margin-top:0.5px; ">
                                    <option value = "1"> 1</option>
                                    <option value = "2"> 2</option>
                                    <option value = "3"> 3</option>
                                    <option value = "4" selected> 4</option>
                                    <option value = "5"> 5</option>
                                    <option value = "6"> 6</option>
                                    <option value = "7"> 7</option>
                                    <option value = "8"> 8</option>
                                    <option value = "9"> 9</option>
                                    <option value = "10"> 10</option>
                                    <option value = "11"> 11</option>
                                    <option value = "12"> 12</option>
                                </select>
                                <input type = "text" value ="17" name="birthDate" style="width:30%; height: 2.75em; margin-right:5%;">
                            </div>

                            </div>
                            </div>
                            <br><br><br>
                            <div style = "text-align: center;">
                            <input class="uploadButton" type="submit" value="저장"onclick="location.href='#'"><br>
                        </div>
                   </div> <!-- 회원 정보 수정 -->
                   


                      
               
 

  

		<!-- Scripts -->
			<script src="${pageContext.request.contextPath}assets/js/jquery.min.js"></script>
			<script src="${pageContext.request.contextPath}assets/js/jquery.scrolly.min.js"></script>
			<script src="${pageContext.request.contextPath}assets/js/browser.min.js"></script>
			<script src="${pageContext.request.contextPath}assets/js/breakpoints.min.js"></script>
			<script src="${pageContext.request.contextPath}assets/js/util.js"></script>
			<script src="${pageContext.request.contextPath}assets/js/main.js"></script>
         	<script src ="${pageContext.request.contextPath}assets/js/myPageInfo.js"></script>
        	<script src="${pageContext.request.contextPath}/assets/js/phonepopup.js"></script>

	</body>
 
</html>