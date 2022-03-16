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
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/myPage.css" type="text/css"/>
      </head>
 
	
	<body class="is-preload">
	
<!-- Header -->
  <jsp:include page="/app/fix/header.jsp" flush="true"/>
		
		
		<!-- Main -->
		<div id="main" class="container medium">
				<header class="major" style = "margin: 0 !important;">
					<h2 class = "notice" style = "font-size: 1.35em; line-height: 1.5em;">마이페이지</h2>
				</header>
                <hr style = "margin: 10px 0 0 0 !important; border-bottom: solid 1.7px #b7b7b7;">
	<!-- Content -->
          <div style = "display: flex;">
            <!--프로필 수정-->
            <div style="width:38%; font-size:16px; padding:40px 0;" class="media-main">
                    <div id = "profile" style = "position: relative; margin-left:20px;">
                        <label><input type="file" style="display:none;">
                        <img src="${pageContext.request.contextPath}/images/프로필.png" style="width: 100px; border-radius: 150px; cursor: pointer; ">
                        </label>
                        <div style = "position:absolute; top: 0px; left: 120px;">
                            <span style = "font-size: 14px; font-weight: 500;">
                                <button class = "boldButtonGray">시터</button></span>
                            <h3 style="margin-bottom: 3px; font-size: 22px;">기영이누나</h3>          
                                    <span style = "margin-top: 20px; font-size:16px; margin-left:5px;"> 27세, 여</span>
                        </div>
                        
                    </div>
                    <hr class ="sp">
                
            
                    <!-- 하단 메뉴 -->
            
                    <div>
                        <!--
                     
                        <button class = "boldButtonYel">프로필 등록</button>
                                                        <button class = "boldButtonBlu" >구직중</button>
                                                        <button class = "boldButtonRed">심사중</button><
                 
                        -->
                 
                        <div class = "innerContent">
                            <img src="https://assets.cdn.soomgo.com/icons/icon-mypage-list-arrow.svg" style="float:right;margin-top: 5px;">
                            <button class = "boldButtonYel">프로필 등록</button>
                            <a href = "${pageContext.request.contextPath}/app/serviceProfile/lookSitterProfile2.jsp"><p class ="innerTitle">내 구인/구직 글</p></a>
                        </div>
                       

                        <div class = "innerContent">
                            <img src="https://assets.cdn.soomgo.com/icons/icon-mypage-list-arrow.svg" style="float:right;margin-top: 5px;">
                            <p class ="innerTitle" id = "bookMark">찜한 게시글</p>
                        </div>
                        <hr class = "split">
                        <div class = "innerContent">
                            <img src="https://assets.cdn.soomgo.com/icons/icon-mypage-list-arrow.svg" style="float:right;margin-top: 5px;">
                           <p class ="innerTitle" id = "information">회원 정보 수정</p>
                        </div>
                        <div class = "innerContent">
                            <img src="https://assets.cdn.soomgo.com/icons/icon-mypage-list-arrow.svg" style="float:right;margin-top: 5px;">
                           <p class ="innerTitle" id = "changePw">비밀번호 변경</p>
                        </div>
                        <div class = "innerContent">
                            <img src="https://assets.cdn.soomgo.com/icons/icon-mypage-list-arrow.svg" style="float:right;margin-top: 5px;">
                            <a href="${pageContext.request.contextPath}/ask/AskList.ask"><p class ="innerTitle">내 문의내역</p></a>
                        </div>

                        <div class = "innerContent">
                            <img src="https://assets.cdn.soomgo.com/icons/icon-mypage-list-arrow.svg" style="float:right;margin-top: 5px;">
                            <a href="${pageContext.request.contextPath}/app/community/community2.jsp"><p class ="innerTitle">내 커뮤니티 글</p></a>
                        </div>

                        <div class = "innerContent">
                            <!--모달 연결 필요-->
                            <img src="https://assets.cdn.soomgo.com/icons/icon-mypage-list-arrow.svg" style="float:right;margin-top: 5px;">
                            <a href="#"><p class ="openBtn">탈퇴하기</p></a> 
                        </div>
                    </div>
                </div>

                <!-- 모달 --> 

                <div class="modal hidden">
                    <div class="bg"></div>
                    <div class="modalBox">
                        <h3 class = "modalText">정말 마미랑을 떠나실 건가요?</h3>
                        <p class = "modalSubText">계정 탈퇴 시 모든 개인정보가 삭제되며,<br>삭제된 계정은 다시 복구되지 않습니다. </p>
                        <div>
		                    <div style = "margin: 0 auto; text-align: center;">
		                        <button class="submitBtn">다시 생각해 볼게요</button>
                                <a class = "quit">탈퇴하기</a>
		                    </div>
	                    </div>
                    </div>
                </div>
                        

                <!-- -------------------------------------------------------------- -->
				<div id = "informatiom" class = "mainBox">
				
				



                      
               
 
 
 
 
 

                    






                
                </div> <!-- 박스 안에서 나옴 -->
             
 
 
            </div>
        </div>
				

               
		
		
		<!-- Aside -->
       
		  <jsp:include page="../fix/aside.jsp" flush="true"/>
		<!-- footer -->
		  <jsp:include page="../fix/footer.jsp" flush="true"/>
         
	

		<!-- Scripts -->
			<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/jquery.scrolly.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/browser.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/breakpoints.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/util.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/main.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/myPage.js"></script> 
	</body>

  
  
</html>