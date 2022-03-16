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
		<title>공지사항</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
        <link rel="stylesheet" href="assets/css/main.css" />
    <style>
   /* ---------------------------------------------------- */
        @media (max-width: 576px){
        	
        	.container.medium {
            width: 90% !important;
           
        	}
        
    		td.num{
    			display: none;	
    		}
    		
    		tr.boardHead{
    			display: none;	
    		}
    		
    		td.title{
    		    width: 880px;
    			padding-left: 10px;
    			font-size: 15px;
    			color: black;
    			font-weight: bold;
    			padding-bottom: 29px;
    			position: relative;
   			}
   			
   			td.date{
   				text-align: center;
    			position: absolute;
    			margin: 25px 0 0px -519px;
   			}
   			
   			.notice {
   				 font-size: 30px !important;
    			 margin-bottom: -10px !important;
    			     padding-left: 15px !important;
   			}
   			
   			.search-box input {
    			height: 60% !important;
    			width: 165% !important;
    			border: none !important;
    			background: #f6f6f6 !important;
   				margin-left: -24px;
   				margin-top: 22px;
   				font-size: 18px !important;
   				border-radius: 40px !important;
   				padding: 0 50px 0 20px !important;
   				outline: none !important;
   				opacity: 0 !important;
   				transition: all 0.5s cubic-bezier(0.68, -0.55, 0.265, 1.55 ) !important;
   			}
   			
   			.search-box {
   				width: 165% !important;
   			}
   			
			.cancel-btn {
   				display:none;
   			}
   			
   			.search-box.active .search-btn {
    			height: 38px !important;
    			width: 38px !important;
    			background: #ffb61a !important;
    			color: #f6f6f6 !important;
			}
   			
   			.search-box .search-btn {
    			height: 40px !important;
    			width: 40px !important;
    			background: #f6f6f6 !important;
    			color: #ffb61a !important;
    			position: absolute !important;
    			top: 40% !important;
     			    right: -112px !important;
    			transform: translateY(-50%) !important;
    			line-height: 38px !important;
    			text-align: center !important;
    			border-radius: 50% !important;
    			font-size: 18px !important;
    			cursor: pointer !important;
    			transition: all 0.5s cubic-bezier(0.68, -0.55, 0.265, 1.55 ) !important;
   				z-index: 2 !important;
   			}
   			
   			.search-box.active{
   				display:block;
   				padding-left: 56px;
   			}
   			
   			.search-btn{
   				
   			}
   			
   			.search-box-style{
	padding-left:6%; 
	margin-bottom: 10px; 
	position:relative;
	    display: none;
}
   		ul.myUl {
   			margin: 0 0 23px -313px !important;
   			}
   			
   		}
/*----------------------------------------------------------------- */

 @media (max-width: 390px){
        	
        	.container.medium {
            width: 90% !important;
           
        	}
        
    		td.num{
    			display: none;	
    		}
    		
    		tr.boardHead{
    			display: none;	
    		}
    		
    		td.title{
    		    width: 880px;
    			padding-left: 10px;
    			font-size: 15px;
    			color: black;
    			font-weight: bold;
    			padding-bottom: 29px;
    			position: relative;
   			}
   			
   			td.date{
   				text-align: center;
    			position: absolute;
    			margin: 25px 0 0px -519px;
   			}
   			
   			.notice {
   				 font-size: 28px !important;
    			 margin-bottom: -10px !important;
    			     padding-left: 15px !important;
   			}
   			
   			.search-box input {
    			height: 60% !important;
    			width: 165% !important;
    			border: none !important;
    			background: #f6f6f6 !important;
   				margin-left: -24px;
   				margin-top: 22px;
   				font-size: 18px !important;
   				border-radius: 40px !important;
   				padding: 0 50px 0 20px !important;
   				outline: none !important;
   				opacity: 0 !important;
   				transition: all 0.5s cubic-bezier(0.68, -0.55, 0.265, 1.55 ) !important;
   			}
   			
   			.search-box {
   				width: 165% !important;
   			}
   			
			.cancel-btn {
   				display:none;
   			}
   			
   			.search-box.active .search-btn {
    			height: 38px !important;
    			width: 38px !important;
    			background: #ffb61a !important;
    			color: #f6f6f6 !important;
			}
   			
   			.search-box .search-btn {
    			height: 40px !important;
    			width: 40px !important;
    			background: #f6f6f6 !important;
    			color: #ffb61a !important;
    			position: absolute !important;
    			top: 40% !important;
     			    right: -112px !important;
    			transform: translateY(-50%) !important;
    			line-height: 38px !important;
    			text-align: center !important;
    			border-radius: 50% !important;
    			font-size: 18px !important;
    			cursor: pointer !important;
    			transition: all 0.5s cubic-bezier(0.68, -0.55, 0.265, 1.55 ) !important;
   				z-index: 2 !important;
   			}
   			
   			.search-box.active{
   				display:block;
   				padding-left: 56px;
   			}
   			
   			.search-btn{
   				
   			}
   			
   			.search-box-style{
	padding-left:6%; 
	margin-bottom: 10px; 
	position:relative;
	    display: none;
}
   		ul.myUl {
   			margin: 0 0 23px -313px !important;
   			}
   			
   		}
/*----------------------------------------------------------------- */
		
        @font-face {
		    font-family: 'GmarketSansMedium';
		    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/GmarketSansMedium.woff') format('woff');
		    font-weight: normal;
		    font-style: normal;
		}

        @font-face {
            font-family: 'GmarketSansLight';
            src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/GmarketSansLight.woff') format('woff');
            font-weight: normal;
            font-style: normal;
        }

        .container.medium {
            width: 70%;
           
        }
		
        .notice{
            color:black;
            text-align: left;
            font-family: 'GmarketSansMedium';
        }
        



        .search-box{
  position:relative !important;
  height:60px !important;
  width:0px !important;
  transition: all 0.5s cubic-bezier(0.68, -0.55, 0.265, 1.55 ) !important;
}
.search-box.active{
  width: 340px !important;
}
.search-box.active input{
  opacity:1 !important;
}
.search-box input{
    height: 80% !important;
    width: 116%;
    border: none !important;
    background: #f6f6f6 !important;
    margin-left: -67px !important;
    font-size: 18px !important;
    border-radius: 40px !important;
    padding: 0 60px 0 20px !important;
    outline: none !important;
    opacity: 0 !important;
  transition: all 0.5s cubic-bezier(0.68, -0.55, 0.265, 1.55 ) !important;
}
.search-box .search-btn{
  height:40px ;
  width:40px ;
  background: #f6f6f6 ;
  color:#ffb61a ;
  position: absolute ;
  top:39% ;
  right:18px ;
  transform: translateY(-50%) ;
  line-height:40px ;
  text-align:center ;
  border-radius:50% ;
  font-size:20px ;
  cursor:pointer ;
  transition: all 0.5s cubic-bezier(0.68, -0.55, 0.265, 1.55 ) ;
  z-index:2 ;
}
.search-box.active .search-btn{
  height:40px ;
  width:40px ;
  background: #ffb61a ;
  color:#f6f6f6 ;
}
.search-box .cancel-btn{
  position: absolute !important;
  color: #ffb61a !important;
  top:39% !important;
  right: 0px !important;
  transform: translateY(-50%) !important;
  color: #ffb61a !important;
  font-size:28px !important;
  cursor:pointer !important;
  height: 42px !important;
    width: 73px !important;
  line-height:40px !important;
  text-align:center !important;
  border-radius:50%;
  opacity:0 !important;
}
.search-box.active .cancel-btn{
  right: -135px !important;
  opacity:1 !important;
  color:#b7b7b7 !important;
    transition: all 0.5s cubic-bezier(0.68, -0.55, 0.265, 1.55 ) !important;
}

.boardHead{
    border-top: 2px solid #000;
    border-bottom: 1px solid #707070;
    background: white !important;
    color:black;
    font-weight: bold;
    font-size:14px;
    
}

.boarderInner{
    background: white !important;
    font-size:14px;
}

.num{
    text-align: center; width:120px;
    font-size:14px;
}

.title{
    width:880px; 
    padding-left:50px;
    font-size:15px;
    color:black;
    font-weight: bold;
}

.date{
    text-align: center;
}

.titleTag{
    color:black;
    border-bottom: hidden;
}

.paging {
    margin-top: 1.6667vw;
    margin: 0 auto;
}

.paging ul li a {
    position: relative;
    z-index: 1;
    font-size: 13px;
    color: black;
    border: 1px solid #f6f6f6;
    margin: 0 5px;
    padding:5px 10px;
    border-radius: 5px;

}

.paging ul li a:hover {
    position: relative;
    z-index: 1;
    font-size: 13px;
    border: 1px solid ffb61a;
    color: white !important;
    background: #ffb61a;
    margin: 0 5px;
    padding:5px 10px;
    border-radius: 5px;

}

il.page{
    list-style: none;
    margin-left:30px;
    list-style: none;
}

li.page{
    float:left;
    list-style: none;

}

 a.pageClass {
    transition: color 0s ease-in-out, border-color 0.2s ease-in-out;
}

a.pageClass.currentPage{
    color: black;
}

.currentPage {
    color: #fff !important;
    border: 1px solid #ffb61a;
    background-color: #ffb61a;
    font-weight: bold;
}

.new{
    background-color: #ffb61a;
    color:white;
    height: 44px;
    width:100px;
    border:hidden;
    border-radius: 200px;
    font-weight: bold;
    position:absolute;
    font-size:15px;
    top:0px;
    right:0px;
    cursor: pointer;
}  

.notice{
	font-size:40px; 
	margin-bottom:-10px;
}

.search-box-style{
	padding-left:6%; 
	margin-bottom: 10px; 
	position:relative
}
		</style>



		
		<link rel="stylesheet" href="assets/css/main.css" />
	</head>
	<body class="is-preload">


	<!-- Header -->
         <div class="wrapper">
            <div class="inner">
               <jsp:include page="header.jsp"/>
            </div>
         </div>
		
		
		<!-- Main -->
		<div id="main" class="container medium">
				<header class="major">
					<h2 class = "notice" >공지사항</h2>
				</header>
				

		<!-- Content -->
                <!-- search-->
                <div class="search-box-style">
                    <div class="search-box">
                        
                        <input type="text" placeholder="검색어를 입력하세요"/>
                        
                        <div class="search-btn">
                        
                        <i class="fas fa-search"></i>
                        </div>
                        <div class="cancel-btn" style = "right: -50px !important;">
                        <i class="fas fa-times"></i>
                               
                        </div>
                    </div>
                      
                     
                </div>
              
         
             
            <div class = "noticeList">
					<table>
						<tr class = "boardHead">
							<td class = "num">번호</td>
							<td class = "title">제목</td>
							<td class = "date">작성일</td>
						</tr>
						<tr class = "boarderInner"> 
                            <td class = "num">4</td>
							<td class = "title"><a href = "noticeDetails.jsp" class = "titleTag">개인정보 처리 방침 변경 안내</a></td>
							<td class = "date">2022/03/05</td>
						</tr>
                        <tr class = "boarderInner"> 
                            <td class = "num">3</td>
                            <td class = "title"><a href = "noticeDetails.jsp" class = "titleTag">[이벤트] 마미랑 공유 이벤트 안내</a></td>
                            <td class = "date">2022/03/04</td>
						</tr>
                        <tr class = "boarderInner"> 
                            <td class = "num">2</td>
                            <td class = "title"><a href = "noticeDetails.jsp" class = "titleTag">마미랑 서비스 점검 안내 (3월 3일 12:00 ~ 3월 4일 06:00)</a></td>
                            <td class = "date">2022/03/03</td>
						</tr>
                        <tr class = "boarderInner"> 
                            <td class = "num">1</td>
                            <td class = "title"><a href = "noticeDetails.jsp" class = "titleTag">개인정보 처리 방침 변경 안내</a></td>
                            <td class = "date">2022/03/02</td>
						</tr>
					</table>
                    
			<!-- 페이징 처리 -->	
				</div>
                    
                <div>
                    <p style = "text-align: center; margin-top:50px; margin-bottom: -20px;">아래 처럼 구현될 예정입니다.</p>
                    <div class="pageingWrap" style = "text-align: center; margin:0 auto; ">
                       <div class="paging" id="noticeList" style = "text-align: center;  margin:0 auto; width:100%;">
                            <!-- <span class="btn_first">
                                <a class="btn_paging first" href="javascript:;" data-page="1"><<  </a>
                            </span>
                            <span class="btn_prev">
                                <a href="javascript:;" data-page="4"> <</a>
                            </span> -->
                            <ul class = "myUl"><li class = "page"><a href="javascript:;" data-page="1" class="pageClass">1</a></li>
                                <li class = "page"><a href="javascript:;" data-page="2" class="pageClass">2</a></li>
                                <li class = "page"><a href="javascript:;" data-page="3" class="pageClass">3</a></li>
                                <li class = "page"><a href="javascript:;" data-page="4" class="pageClass">4</a></li>
                                <li class="active page">
                                    <a href="javascript:;" class="pageClass currentPage" style="cursor: default;">5</a>
                                </li>
                              </ul>
                            <!-- <span class="btn_next"><a href="javascript:;" data-page="6">></a></span><span class="btn_last">
                                <a href="javascript:;" data-page="22">>></a></span> -->
                            </div>
                        </div>
                    </div>



                    <!-- 실제 페이징 처리   -->
                    <div>
                   
										<table style="font-size:1.3rem;">
											<tr align="center" valign="middle">	
												<td class="web-view" style = "background: white; border:hidden;">
													<c:if test="${startPage > 1}">
														<a href="#">&lt;</a>
													</c:if>
												
													<c:forEach var="i" begin="${startPage}" end="${endPage}">
														<c:choose>
															<c:when test="${i eq page}">
																<c:out value="${i}"/>&nbsp;&nbsp;
															</c:when>
															<c:otherwise>
																<a href="#"><c:out value="${i}"/></a>&nbsp;&nbsp;
															</c:otherwise>
														</c:choose>
													</c:forEach>
													
													<c:if test="${endPage < realEndPage}">
														<a href="#">&gt;</a>
													</c:if>
												</td>
											</tr>
                                        </div>
										</table>
									</div>
								</section>
						</div>
					</div>


		

				
            </div>

				
				
	
	
		
		
		<!-- footer -->
         <div class="wrapper">
            <div class="inner">
               <jsp:include page="footer.jsp"/>
            </div>
          </div>
          
          <!-- Aside -->
  <div class="wrapper">
            <div class="inner">
               <jsp:include page="aside.jsp"/>
            </div>
         </div>
	

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>

	</body>
    <script>
        const searchBtn = document.querySelector(".search-btn");
        const cancelBtn = document.querySelector(".cancel-btn");
        const searchBox = document.querySelector(".search-box");
        searchBtn.onclick = () => {
        searchBox.classList.add("active");
        }
        cancelBtn.onclick = () => {
        searchBox.classList.remove("active");
        }
    </script>
</html>