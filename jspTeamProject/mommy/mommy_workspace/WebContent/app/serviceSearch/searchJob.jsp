<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>일자리찾기</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />
		<link rel="preconnect" href="${pageContext.request.contextPath}/https://fonts.googleapis.com">
		
<link rel="preconnect" href="${pageContext.request.contextPath}/https://fonts.gstatic.com" >
<link href="${pageContext.request.contextPath}/https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
	   <script src="https://code.jquery.com/jquery-latest.min.js" type="application/javascript"></script>
  <script type="application/javascript" src="https://zelkun.tistory.com/attachment/cfile8.uf@99BB7A3D5D45C065343307.js"></script>
		<link href="${pageContext.request.contextPath}/assets/css/searchJob.css" rel="stylesheet" >
	
	</head>
	<body >
	
	
	 
		<!-- 돌봄유형 모달창 -->
		  <div id="my_modal">
           <iframe src="${pageContext.request.contextPath}/app/modal/careType.jsp" border="0" frameborder="0" allowTransparency="true" scrolling='no'
            style="width:100; height:100; padding=0; display:yes; font-size:9pt;
          position: absolute;
    width: 110%;
    margin-left: -29px;
    height: 112%;
    margin-top: -40px;"
    class="modal"
			>대체 내용</iframe>  
            <a class="modal_close_btn"><img src="${pageContext.request.contextPath}/images/whiteX.png" style="width:20px;"></a>
        </div>
		
		

		
			<!-- 상세검색 모달창 -->
		  <div id="myModal2">
           <iframe src="${pageContext.request.contextPath}/app/modal/searchDetail.jsp" border="0" frameborder="0" allowTransparency="true" 
           scrolling='no' style="width:100; height:100; padding=0; display:yes; font-size:9pt;
		   position: absolute;
		    width: 116%;
		    margin-left: -44px;
		    height: 104%;
		    margin-top: -8px;
			"class="modal2">대체 내용</iframe>  
            <a class="modalCloseBtn2"><img src="${pageContext.request.contextPath}/images/whiteX.png" style="width:20px;"></a>
        </div>
		
		<!-- 돌봄지역을 선택해주세요 모달창 -->
		  <div id="myModal3">
         <div style="margin-top: 42px;">
		    <select id="sido" class="area">
		      <option value="">'시/도'를 선택해주세요</option>
		    </select>
		    <select id="sigugun" class="area">
		      <option value="">'시/군/구'를 선택해주세요</option>
		    </select>
		    <select id="dong" class="area">
		      <option value="">'동'을 선택해주세요</option>
		    </select>
		 
		  </div>
  
            <a class="modalCloseBtn3"><img src="${pageContext.request.contextPath}/images/grayX.png" style="width:20px;"></a>
        </div>
		
		
			<!-- 시터가 시터꺼 하트눌렀을 때  모달창 -->
		  <div id="myModal4">
           <iframe src="modal4.jsp" class="modal4" style="
		  position: absolute;
    width: 116%;
    margin-left: -9px;
    height: 104%;
    margin-top: -11px;
			">대체 내용</iframe>  
            <a class="modalCloseBtn4"><img src="${pageContext.request.contextPath}/images/whiteX.png" style="width:20px;"></a>
        </div>
		
		
		
<!-- Header -->
  <jsp:include page="../fix/header.jsp" flush="true"/>
		
			<!-- Main -->
      <!-- Aside -->
       
        <jsp:include page="../fix/aside.jsp" flush="true"/>
         
         
         
				<div class="main">
				
				<br><br>
			<h3 style="font-family: 'GmarketSansLight';"> 일자리 찾기</h3>

	<!--돌봄지역, 돌봄 유형  -->
				<div class="locationFilter">
					<div class="locationImg">
						<img src="${pageContext.request.contextPath}/images/location.png" style="width: 100%;" >
					</div>
					<span class="locationInput span mo1" style="margin-left:0px;
					    font-size: 13px;
					    cursor: pointer;
					    color: #626c6e;
					 " id="searchArea">
						돌봄지역을 선택해주세요.</span>
				
					
				</div>
				<div class="locationFilter">
					<div class="locationImg baby">
						<img src="${pageContext.request.contextPath}/images/baby.png" style="width: 100%;" >
					</div>
					<span class="locationInput mo1 span" style="  margin-left: 3px;
				    font-size: 13px;
				    cursor: pointer;
				    color: #626c6e;
				" id="careType">
						돌봄유형 선택하기.</span>
					
				</div>
	
				<!-- 상세검색 -->
				<div class="detailSearch" style="position:relative; ">
					<img src="${pageContext.request.contextPath}/images/filter.png" class="filter">
					<button class="detailSearchButton" id="searchDetail" style="cursor: pointer;
					    margin-bottom: 14px;
					"> &nbsp;&nbsp;&nbsp;&nbsp;상세검색</button>

				</div>




				<!-- 유저정보 -->

	<div class="userPf">
		<img src="${pageContext.request.contextPath}/images/heart.png" class="heart">
		
		<div class="userImg">
			<img src="${pageContext.request.contextPath}/images/아이.png"class="userImgDetail">
		
		</div>
		<div class="userName">
			<h4 style="margin-bottom: 0;"><a href="${pageContext.request.contextPath}/app/serviceProfile/lookMomProfile2.jsp" style="border:none;">아기돌봄 및 가사일 가능한 맘시터 찾습니다.</a></h4>
			<div class="mobileAd">
				<span class="span">서울특별시 강남구</span>&nbsp;
				<div class="line"></div>&nbsp;&nbsp;
				<span class="span">신생아1명</span>&nbsp;
				<div class="line"></div>
				<span class="span">&nbsp;&nbsp;&nbsp;03/14 시작</span>
				&nbsp;&nbsp;
			</div>
			<div class="fontSize">
				<div class="money">
					
				<img src="${pageContext.request.contextPath}/images/money.png" style="width:100%;">
				
			
				</div>
				희망시급 10000원 / <span class="span" style="font-weight: bold;">협의가능</span></div>
			<hr style="margin: 7px 0px;width: 100%;">
			
			<div class="day">
			
				<div class="days">
					<img src="${pageContext.request.contextPath}/images/월1.png" style="width: 30px;" >
					<img src="${pageContext.request.contextPath}/images/화.png" style="width: 30px;" >
					<img src="${pageContext.request.contextPath}/images/수1.png" style="width: 30px;" >
					<img src="${pageContext.request.contextPath}/images/목.png" style="width: 30px;" >
					<img src="${pageContext.request.contextPath}/images/금1.png" style="width: 30px;" >
					<img src="${pageContext.request.contextPath}/images/토.png" style="width: 30px;" >
					<img src="${pageContext.request.contextPath}/images/일.png" style="width: 30px;" >
				</div>
			</div>

		


		</div>	
	</div>
	
			
	
				<!-- 유저정보 -->

	<div class="userPf">
		<img src="${pageContext.request.contextPath}/images/heart.png" class="heart">
		
		<div class="userImg">
			<img src="${pageContext.request.contextPath}/images/아이.png"class="userImgDetail">
		
		</div>
		<div class="userName">
			<h4 style="margin-bottom: 0;"><a href="${pageContext.request.contextPath}/app/serviceProfile/lookMomProfile2.jsp" style="border:none;">아기돌봄 및 가사일 가능한 맘시터 찾습니다.</a></h4>
			<div class="mobileAd">
				<span class="span">서울특별시 강남구</span>&nbsp;
				<div class="line"></div>&nbsp;&nbsp;
				<span class="span">신생아1명</span>&nbsp;
				<div class="line"></div>
				<span class="span">&nbsp;&nbsp;&nbsp;03/14 시작</span>
				&nbsp;&nbsp;
			</div>
			<div class="fontSize">
				<div class="money">
					
				<img src="${pageContext.request.contextPath}/images/money.png" style="width:100%;">
				
			
				</div>
				희망시급 10000원 / <span class="span" style="font-weight: bold;">협의가능</span></div>
			<hr style="margin: 7px 0px;width: 100%;">
			
			<div class="day">
			
				<div class="days">
					<img src="${pageContext.request.contextPath}/images/월1.png" style="width: 30px;" >
					<img src="${pageContext.request.contextPath}/images/화.png" style="width: 30px;" >
					<img src="${pageContext.request.contextPath}/images/수1.png" style="width: 30px;" >
					<img src="${pageContext.request.contextPath}/images/목.png" style="width: 30px;" >
					<img src="${pageContext.request.contextPath}/images/금1.png" style="width: 30px;" >
					<img src="${pageContext.request.contextPath}/images/토.png" style="width: 30px;" >
					<img src="${pageContext.request.contextPath}/images/일.png" style="width: 30px;" >
				</div>
			</div>

		


		</div>	
	</div>
	
			
				<!-- 유저정보 -->

	<div class="userPf">
		<img src="${pageContext.request.contextPath}/images/heart.png" class="heart">
		
		<div class="userImg">
			<img src="${pageContext.request.contextPath}/images/아이.png"class="userImgDetail">
		
		</div>
		<div class="userName">
			<h4 style="margin-bottom: 0;"><a href="${pageContext.request.contextPath}/app/serviceProfile/lookMomProfile2.jsp" style="border:none;">아기돌봄 및 가사일 가능한 맘시터 찾습니다.</a></h4>
			<div class="mobileAd">
				<span class="span">서울특별시 강남구</span>&nbsp;
				<div class="line"></div>&nbsp;&nbsp;
				<span class="span">신생아1명</span>&nbsp;
				<div class="line"></div>
				<span class="span">&nbsp;&nbsp;&nbsp;03/14 시작</span>
				&nbsp;&nbsp;
			</div>
			<div class="fontSize">
				<div class="money">
					
				<img src="${pageContext.request.contextPath}/images/money.png" style="width:100%;">
				
			
				</div>
				희망시급 10000원 / <span class="span" style="font-weight: bold;">협의가능</span></div>
			<hr style="margin: 7px 0px;width: 100%;">
			
			<div class="day">
			
				<div class="days">
					<img src="${pageContext.request.contextPath}/images/월1.png" style="width: 30px;" >
					<img src="${pageContext.request.contextPath}/images/화.png" style="width: 30px;" >
					<img src="${pageContext.request.contextPath}/images/수1.png" style="width: 30px;" >
					<img src="${pageContext.request.contextPath}/images/목.png" style="width: 30px;" >
					<img src="${pageContext.request.contextPath}/images/금1.png" style="width: 30px;" >
					<img src="${pageContext.request.contextPath}/images/토.png" style="width: 30px;" >
					<img src="${pageContext.request.contextPath}/images/일.png" style="width: 30px;" >
				</div>
			</div>

		


		</div>	
	</div>
	
			
				<!-- 유저정보 -->

	<div class="userPf">
		<img src="${pageContext.request.contextPath}/images/heart.png" class="heart">
		
		<div class="userImg">
			<img src="${pageContext.request.contextPath}/images/아이.png"class="userImgDetail">
		
		</div>
		<div class="userName">
			<h4 style="margin-bottom: 0;"><a href="${pageContext.request.contextPath}/app/serviceProfile/lookMomProfile2.jsp" style="border:none;">아기돌봄 및 가사일 가능한 맘시터 찾습니다.</a></h4>
			<div class="mobileAd">
				<span class="span">서울특별시 강남구</span>&nbsp;
				<div class="line"></div>&nbsp;&nbsp;
				<span class="span">신생아1명</span>&nbsp;
				<div class="line"></div>
				<span class="span">&nbsp;&nbsp;&nbsp;03/14 시작</span>
				&nbsp;&nbsp;
			</div>
			<div class="fontSize">
				<div class="money">
					
				<img src="${pageContext.request.contextPath}/images/money.png" style="width:100%;">
				
			
				</div>
				희망시급 10000원 / <span class="span" style="font-weight: bold;">협의가능</span></div>
			<hr style="margin: 7px 0px;width: 100%;">
			
			<div class="day">
			
				<div class="days">
					<img src="${pageContext.request.contextPath}/images/월1.png" style="width: 30px;" >
					<img src="${pageContext.request.contextPath}/images/화.png" style="width: 30px;" >
					<img src="${pageContext.request.contextPath}/images/수1.png" style="width: 30px;" >
					<img src="${pageContext.request.contextPath}/images/목.png" style="width: 30px;" >
					<img src="${pageContext.request.contextPath}/images/금1.png" style="width: 30px;" >
					<img src="${pageContext.request.contextPath}/images/토.png" style="width: 30px;" >
					<img src="${pageContext.request.contextPath}/images/일.png" style="width: 30px;" >
				</div>
			</div>

		


		</div>	
	</div>
	
			
				<!-- 유저정보 -->

	<div class="userPf">
		<img src="${pageContext.request.contextPath}/images/heart.png" class="heart">
		
		<div class="userImg">
			<img src="${pageContext.request.contextPath}/images/아이.png"class="userImgDetail">
		
		</div>
		<div class="userName">
			<h4 style="margin-bottom: 0;"><a href="${pageContext.request.contextPath}/app/serviceProfile/lookMomProfile2.jsp" style="border:none;">아기돌봄 및 가사일 가능한 맘시터 찾습니다.</a></h4>
			<div class="mobileAd">
				<span class="span">서울특별시 강남구</span>&nbsp;
				<div class="line"></div>&nbsp;&nbsp;
				<span class="span">신생아1명</span>&nbsp;
				<div class="line"></div>
				<span class="span">&nbsp;&nbsp;&nbsp;03/14 시작</span>
				&nbsp;&nbsp;
			</div>
			<div class="fontSize">
				<div class="money">
					
				<img src="${pageContext.request.contextPath}/images/money.png" style="width:100%;">
				
			
				</div>
				희망시급 10000원 / <span class="span" style="font-weight: bold;">협의가능</span></div>
			<hr style="margin: 7px 0px;width: 100%;">
			
			<div class="day">
			
				<div class="days">
					<img src="${pageContext.request.contextPath}/images/월1.png" style="width: 30px;" >
					<img src="${pageContext.request.contextPath}/images/화.png" style="width: 30px;" >
					<img src="${pageContext.request.contextPath}/images/수1.png" style="width: 30px;" >
					<img src="${pageContext.request.contextPath}/images/목.png" style="width: 30px;" >
					<img src="${pageContext.request.contextPath}/images/금1.png" style="width: 30px;" >
					<img src="${pageContext.request.contextPath}/images/토.png" style="width: 30px;" >
					<img src="${pageContext.request.contextPath}/images/일.png" style="width: 30px;" >
				</div>
			</div>

		


		</div>	
	</div>
	
			
				<!-- 유저정보 -->

	<div class="userPf">
		<img src="${pageContext.request.contextPath}/images/heart.png" class="heart">
		
		<div class="userImg">
			<img src="${pageContext.request.contextPath}/images/아이.png"class="userImgDetail">
		
		</div>
		<div class="userName">
			<h4 style="margin-bottom: 0;"><a href="${pageContext.request.contextPath}/app/serviceProfile/lookMomProfile2.jsp" style="border:none;">아기돌봄 및 가사일 가능한 맘시터 찾습니다.</a></h4>
			<div class="mobileAd">
				<span class="span">서울특별시 강남구</span>&nbsp;
				<div class="line"></div>&nbsp;&nbsp;
				<span class="span">신생아1명</span>&nbsp;
				<div class="line"></div>
				<span class="span">&nbsp;&nbsp;&nbsp;03/14 시작</span>
				&nbsp;&nbsp;
			</div>
			<div class="fontSize">
				<div class="money">
					
				<img src="${pageContext.request.contextPath}/images/money.png" style="width:100%;">
				
			
				</div>
				희망시급 10000원 / <span  class="span" style="font-weight: bold;">협의가능</span></div>
			<hr style="margin: 7px 0px;width: 100%;">
			
			<div class="day">
			
				<div class="days">
					<img src="${pageContext.request.contextPath}/images/월1.png" style="width: 30px;" >
					<img src="${pageContext.request.contextPath}/images/화.png" style="width: 30px;" >
					<img src="${pageContext.request.contextPath}/images/수1.png" style="width: 30px;" >
					<img src="${pageContext.request.contextPath}/images/목.png" style="width: 30px;" >
					<img src="${pageContext.request.contextPath}/images/금1.png" style="width: 30px;" >
					<img src="${pageContext.request.contextPath}/images/토.png" style="width: 30px;" >
					<img src="${pageContext.request.contextPath}/images/일.png" style="width: 30px;" >
				</div>
			</div>

		


		</div>	
	</div>
	
			
				<!-- 유저정보 -->

	<div class="userPf">
		<img src="${pageContext.request.contextPath}/images/heart.png" class="heart">
		
		<div class="userImg">
			<img src="${pageContext.request.contextPath}/images/아이.png"class="userImgDetail">
		
		</div>
		<div class="userName">
			<h4 style="margin-bottom: 0;"><a href="${pageContext.request.contextPath}/app/serviceProfile/lookMomProfile2.jsp" style="border:none;">아기돌봄 및 가사일 가능한 맘시터 찾습니다.</a></h4>
			<div class="mobileAd">
				<span class="span">서울특별시 강남구</span>&nbsp;
				<div class="line"></div>&nbsp;&nbsp;
				<span class="span">신생아1명</span>&nbsp;
				<div class="line"></div>
				<span class="span">&nbsp;&nbsp;&nbsp;03/14 시작</span>
				&nbsp;&nbsp;
			</div>
			<div class="fontSize">
				<div class="money">
					
				<img src="${pageContext.request.contextPath}/images/money.png" style="width:100%;">
				
			
				</div>
				희망시급 10000원 / <span class="span" style="font-weight: bold;">협의가능</span></div>
			<hr style="margin: 7px 0px;width: 100%;">
			
			<div class="day">
			
				<div class="days">
					<img src="${pageContext.request.contextPath}/images/월1.png" style="width: 30px;" >
					<img src="${pageContext.request.contextPath}/images/화.png" style="width: 30px;" >
					<img src="${pageContext.request.contextPath}/images/수1.png" style="width: 30px;" >
					<img src="${pageContext.request.contextPath}/images/목.png" style="width: 30px;" >
					<img src="${pageContext.request.contextPath}/images/금1.png" style="width: 30px;" >
					<img src="${pageContext.request.contextPath}/images/토.png" style="width: 30px;" >
					<img src="${pageContext.request.contextPath}/images/일.png" style="width: 30px;" >
				</div>
			</div>

		


		</div>	
	</div>
	
			
				<!-- 유저정보 -->

	<div class="userPf">
		<img src="${pageContext.request.contextPath}/images/heart.png" class="heart">
		
		<div class="userImg">
			<img src="${pageContext.request.contextPath}/images/아이.png"class="userImgDetail">
		
		</div>
		<div class="userName">
			<h4 style="margin-bottom: 0;"><a href="${pageContext.request.contextPath}/app/serviceProfile/lookMomProfile2.jsp" style="border:none;">아기돌봄 및 가사일 가능한 맘시터 찾습니다.</a></h4>
			<div class="mobileAd">
				<span class="span">서울특별시 강남구</span>&nbsp;
				<div class="line"></div>&nbsp;&nbsp;
				<span class="span">신생아1명</span>&nbsp;
				<div class="line"></div>
				<span class="span">&nbsp;&nbsp;&nbsp;03/14 시작</span>
				&nbsp;&nbsp;
			</div>
			<div class="fontSize">
				<div class="money">
					
				<img src="${pageContext.request.contextPath}/images/money.png" style="width:100%;">
				
			
				</div>
				희망시급 10000원 / <span  class="span" style="font-weight: bold;">협의가능</span></div>
			<hr style="margin: 7px 0px;width: 100%;">
			
			<div class="day">
			
				<div class="days">
					<img src="${pageContext.request.contextPath}/images/월1.png" style="width: 30px;" >
					<img src="${pageContext.request.contextPath}/images/화.png" style="width: 30px;" >
					<img src="${pageContext.request.contextPath}/images/수1.png" style="width: 30px;" >
					<img src="${pageContext.request.contextPath}/images/목.png" style="width: 30px;" >
					<img src="${pageContext.request.contextPath}/images/금1.png" style="width: 30px;" >
					<img src="${pageContext.request.contextPath}/images/토.png" style="width: 30px;" >
					<img src="${pageContext.request.contextPath}/images/일.png" style="width: 30px;" >
				</div>
			</div>

		


		</div>	
	</div>
	
			
	

</div>
	

<!-- footer -->
        <jsp:include page="../fix/footer.jsp" flush="true"/>
         
	</body>
         
		<!-- Scripts -->
			<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/jquery.scrolly.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/browser.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/breakpoints.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/util.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/main.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/searchJob.js"></script>
	
	
</html>