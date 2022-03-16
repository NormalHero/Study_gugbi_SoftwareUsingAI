<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE HTML>
<!--
	Phantom by Pixelarity
	pixelarity.com | hello@pixelarity.com
	License: pixelarity.com/license
-->
<html>
	<head>
		<title>커뮤니티</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
	
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/communityDetails.css" />
	
	</head>


	<body class="is-preload">
		<c:set var="communityList" value="${communityList}"/>
		<c:set var="page" value="${page}"/>
			<!-- Aside -->
  <div class="wrapper">
            <div class="inner">
               <jsp:include page="/app/fix/aside.jsp" flush="true"/>
            </div>
         </div> 
			
         
		<!-- Header -->
			 <div class="wrapper">
				<div class="inner">
					<jsp:include page="/app/fix/header.jsp"/>
				</div>
			</div> 
			

		<!-- Wrapper -->
			<div id="wrapper">

		
				<!-- title -->
				<div style = "position: relative;" class="media1">
					<img src = "${pageContext.request.contextPath}/images/커뮤니티.jpg" style = "width:100%;">
					<div>
						<h2 class = "textOnImg media8">마미랑 커뮤니티</h2>
					</div>
				</div>
				<!-- Main -->
					<div style = "background:#f6f6f6; margin-top:-10px;" class="media2">
                        
                        <div id="main" class="container media3" style = "background-color: white; width:60%;">
                            <div class = "close" style="margin-right: 35px; margin-top:-80px; margin-bottom: 60px;">
                                <a onclick="location.href = '${pageContext.request.contextPath}/CommunityListOk.com'" style = "border-bottom: hidden;"><img src = "${pageContext.request.contextPath}/images/closeButton.png" class="close"></a>
                           </div>


                            <div style ="padding-left: 6em; padding-right: 6em;" class="media4">

                                <a class = gray>시터</a><br><br>
                                <h2 style = "font-family: 'GmarketSansMedium'; color:black">저희 아기 귀엽죠</h2>
                               
                                <!--작성자, 시간, 수정 삭제-->
                                <div style ="padding-top:15px; " class="media5">
                                    <img class="profile" src="${pageContext.request.contextPath}/images/프로필아이콘.jpg" style = "float:left;">
                                        <p>&nbsp;<span id = "nickname" class="media6">최고심</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class ="gray">2022/03/04</span>
                                                   <c:if test="${memberNumber eq board.getMemberNumber()}">
                                            <a class = "gray " style ="float:right; margin-left:12px;" onclick="location.href='${pageContext.request.contextPath}/community/CommunityDeleteOk.com'">삭제</a>
                                            <a class = "gray" style ="float:right;">수정</a>
                                        			</c:if>
                                        </p> 
                                        <hr>
                                        <!-- 텍스트 -->
                                        <div id ="innerText" class="media7">
                                            <p>마미랑 커뮤니티에서 또래의 아기를 키우는 부모님 또는 시터들과 소통해보세요.</p>
                                            <p>육아를 하면서 겪는 나만의 경험, 다양한 주제의 이야기들을 만나보세요..</p>
                                            <p>내 아이에게 딱 맞는 마미랑 !</p>
                                            <p>아이와 엄마가 행복해지는 마미랑 내 아이에게 딱 맞는 우우리 동네 베이비시터, 마미랑으로 만나보세요.</p>
                                            <img src="${pageContext.request.contextPath}/images/pic01.jpg" alt=""  width="100%" height="100%" style="margin-top:30px; margin-bottom: 30px;"/>
                                            <p>마미랑 커뮤니티에서 또래의 아기를 키우는 부모님 또는 시터들과 소통해보세요.</p>
                                            <p>육아를 하면서 겪는 나만의 경험, 다양한 주제의 이야기들을 만나보세요..</p>
                                            <p>내 아이에게 딱 맞는 마미랑 !</p>
                                            <p>아이와 엄마가 행복해지는 마미랑 내 아이에게 딱 맞는 우우리 동네 베이비시터, 마미랑으로 만나보세요.</p>
                                            <br>
                                           
                                            <!-- 텍스트 끝 -->
                                            <br>
                                        </div>
                                        
                                        <hr>
                                    </div>
                                   
                                  	
				
				<!-- 댓글 ㅣ 댓글 작성 했을 때 자동으로 열리게 구현 -->
				<div id="replyBackground"> 
                     <img src = "${pageContext.request.contextPath}/images/comment.png" class = "commentImg">
                                
                            <span id="toc-toggle" onclick="openCloseToc()">댓글 보기</span>
                                <ol id="toc-content">
                                    
                                    <!-- 펼치기 내용 -->
                                    <div id="reply" style = "padding-top: 40px;">
                                        <div class="replyPart">
                                            <div class="rep">
                                                <img class="profileComment" src="${pageContext.request.contextPath}/images/댓글프로필아이콘.jpg" style = "float:left;">
                                                <div class="rep_a"><p class = "nickname">&nbsp;<strong id = "username">기영누나</strong>  <a class = "commentGray" style ="float:right; margin-left:12px;">삭제</a>
                                                    <a class = "commentGray" style ="float:right;">수정</a></p></div>
                                                <p class = "comment">우와 너무 귀여워요~</p>
                                                <p class = "commentDate">2022/03/04</p>
                                           </div>
                                           <hr class = "splitComment">
                                           <div class="rep">
                                                <img class="profileComment" src="${pageContext.request.contextPath}/images/댓글프로필아이콘.jpg" style = "float:left;">
                                                <div class="rep_a"><p class = "nickname">&nbsp;<strong id = "username">기영누나</strong>  <a class = "commentGray" style ="float:right; margin-left:12px;">삭제</a>
                                                    <a class = "commentGray" style ="float:right;">수정</a></p></div>
                                                <p class = "comment">졸리당</p>
                                                <p class = "commentDate">2022/03/04</p>
                                            </div>
                                            <hr class = "splitComment">
                                            <div class="rep">
                                                 <img class="profileComment" src="${pageContext.request.contextPath}/images/프로필아이콘.jpg" style = "float:left;">
                                                 <div class="rep_a"><p class = "nickname">&nbsp;<strong id = "username">최고심</strong>  <a class = "commentGray" style ="float:right; margin-left:12px;">삭제</a>
                                                    <a class = "commentGray" style ="float:right;">수정</a></p></div>
                                                 <p class = "comment">울와기 오구오구</p>
                                                 <p class = "commentDate">2022/03/04</p>
                                             </div>
                                        </div>
                                    </div>
                                </ol>
                            

                                <!-- 댓글 글쓰기 -->
                                    <div style = "margin-top:30px;">
                                        <form method="post" action="#" class="combined" style="width:auto;">	                        
                                            <textarea name="content" id="content" class = "commentBox" placeholder="커뮤니티가 더 훈훈해지는 댓글 부탁드립니다. 불쾌감을 주는 욕설과 악플은 삭제될 수 있습니다." class="invert" rows="5"></textarea>
                                            <input type="submit" value="등록하기" class = "submitButton">
                                        </form>
                                       
                                    </div>
                                    <br>
                            </div>
                                        
                                </div>
                            </div>
                         

                        </div>
                        


                    </div>
		</div>
		<%-- <!--footer-->
			<div class="wrapper">
				<div class="inner">
				   <jsp:include page="${pageContext.request.contextPath}/app/fix/footer.jsp"/>
				</div>
			 </div> --%>

		<!-- Scripts -->
			<script src="${pageContext.request.contextPath}/assets/js/jquery.min2.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/browser.min2.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/breakpoints.min2.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/util2.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/main2.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/jquery.scrolly.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/browser.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/breakpoints.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/util.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/main.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/communityDetails.js"></script>
			
			
			 
	</body>
</html>