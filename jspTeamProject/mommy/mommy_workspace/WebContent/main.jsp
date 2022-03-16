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
		<title>메인 페이지</title>
		
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
	</head>
	<style>
    /*슬라이더 스타일*/
    .section input[id*="slide"] {display:none;}
	.section .slidewrap {max-width:1200px;margin:0 auto;}
	.section .slidelist {white-space:nowrap;font-size:0;overflow:hidden;position:relative;}
	.section .slidelist > li {display:inline-block;vertical-align:middle;width:100%;transition:all .5s;}
	.section .slidelist > li > a {display:block;position:relative; text-align: center;}
	.section .slidelist > li > a img {width:92%;}
	.section .slidelist label {position:absolute;top:50%;transform:translateY(-50%);padding:50px;cursor:pointer;}
	.section .slidelist .textbox {position:absolute;top:50%;left:61%;transform:translate(-50%,-50%);line-height:1.6;text-align:center;}
	.section .slidelist .textbox h3 {font-size:36px;color:#fff;;transform:translateY(30px);transition:all .5s;}
	.section .slidelist .textbox p {font-size:16px;color:#fff;opacity:0;transform:translateY(30px);transition:all .5s;}
	
	/* input에 체크되면 슬라이드 효과 */
	.section input[id="slide01"]:checked ~ .slidewrap .slidelist > li {transform:translateX(0%);}
	.section input[id="slide02"]:checked ~ .slidewrap .slidelist > li {transform:translateX(-100%);}
	.section input[id="slide03"]:checked ~ .slidewrap .slidelist > li {transform:translateX(-200%);}

	/* input에 체크되면 텍스트 효과 */
	.section input[id="slide01"]:checked ~ .slidewrap li:nth-child(1) .textbox h3 {opacity:1;transform:translateY(0);transition-delay:.2s;}
	.section input[id="slide01"]:checked ~ .slidewrap li:nth-child(1) .textbox p {opacity:1;transform:translateY(0);transition-delay:.4s;}
	.section input[id="slide02"]:checked ~ .slidewrap li:nth-child(2) .textbox h3 {opacity:1;transform:translateY(0);transition-delay:.2s;}
	.section input[id="slide02"]:checked ~ .slidewrap li:nth-child(2) .textbox p {opacity:1;transform:translateY(0);transition-delay:.4s;}
	.section input[id="slide03"]:checked ~ .slidewrap li:nth-child(3) .textbox h3 {opacity:1;transform:translateY(0);transition-delay:.2s;}
	.section input[id="slide03"]:checked ~ .slidewrap li:nth-child(3) .textbox p {opacity:1;transform:translateY(0);transition-delay:.4s;}

	/* 좌,우 슬라이드 버튼 */
	.slide-control > div {display:none;}
	.section .left {left:30px;background:url('./images/left.png') center center / 100% no-repeat;}
	.section .right {right:30px;background:url('./images/right.png') center center / 100% no-repeat;}
	.section input[id="slide01"]:checked ~ .slidewrap .slide-control > div:nth-child(1) {display:block;}
	.section input[id="slide02"]:checked ~ .slidewrap .slide-control > div:nth-child(2) {display:block;}
	.section input[id="slide03"]:checked ~ .slidewrap .slide-control > div:nth-child(3) {display:block;}

	/* 페이징 */
	.slide-pagelist {text-align:center;}
	.slide-pagelist > li {display:inline-block;vertical-align:middle;}
	.slide-pagelist > li > label {display:block;padding:8px 30px;border-radius:30px;background:#FFF7CA;margin:20px 10px;cursor:pointer;}
	.section input[id="slide01"]:checked ~ .slidewrap .slide-pagelist > li:nth-child(1) > label {background:#ffb61a;}
	.section input[id="slide02"]:checked ~ .slidewrap .slide-pagelist > li:nth-child(2) > label {background:#ffb61a;}
	.section input[id="slide03"]:checked ~ .slidewrap .slide-pagelist > li:nth-child(3) > label {background:#ffb61a;}



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
      @media (max-width: 576px){
      
    
      
      .media1{width: 193px !important;}
      .media2{font-size: 12px;}
      .media3{   font-size: 10px;}
      .media4{font-size: 10px;}

      .media6{display: none !important;}

      .media8{      font-size: 18px !important;
    margin-top: 26px !important;
    margin-bottom: 0 !important;}
    
    .media9{
    	display:none;
    }
    .media10{
        width: 120px !important;
    height: 124px !important;
    font-size: 16px !important;
    left: 231px;
    }
      .media13{    width: 120px !important;
    height: 38px !important;
    font-size: 16px !important;}
      .media11{font-size: 16px !important;
    margin-left: -36px !important;}
      .media12{font-size: 11px !important;
    margin-left: -36px !important;
    width: 178px !important;}
      .media14{    display: none;}
      .media15{width: 89px !important;
    font-size: 8px !important;
    display: block !important;
    left: 88px !important;}

      .media17{  font-size: 20px !important;
    margin-bottom: 0 !important;}
  
      .media22{    display: none;}
      
      
      
       #main h1,  #main h2,  #main h3,  #main h4,  #main h5,  #main h6, #main p, #main strong{
            color:black;
        }

        #logo{
            width: 150px;
        }

        .textOnImg{
            position: absolute;
            color: white;
            left: 20%;
            top: 14%;
            font-family: GmarketSansMedium !important;
        }

        .wave{
       
            display: none;
        }

        .mainTitle{
            text-align: center;
            font-family: GmarketSansMedium !important; 
            color: #ffb61a !important;
            font-size: 28px;
        }

        .slideText{
            font-family: GmarketSansMedium !important;
        }
        
      
      }

        #main h1,  #main h2,  #main h3,  #main h4,  #main h5,  #main h6, #main p, #main strong{
            color:black;
        }

        #logo{
            width: 150px;
        }

        .textOnImg{
            position: absolute;
            color: white;
            left: 20%;
            top: 14%;
            font-family: GmarketSansMedium !important;
        }

        .wave{
            width: 25%;
            top: 45%;
            position: absolute;
            left: 20%;
        }

        .mainTitle{
            text-align: center;
            font-family: GmarketSansMedium !important; 
            color: #ffb61a !important
        }

        .slideText{
            font-family: GmarketSansMedium !important;
        }
        
        
#banner:after {
	z-index: -1;
}

#banner{
	z-index: 1;
}

	</style>
	<body class="is-preload">

	  <!-- Header -->
         <div class="wrapper">
            <div class="inner">
               <jsp:include page="header.jsp"/>
            </div>
         </div>

		<!-- Banner -->
			<section id="banner" >
				<div class="inner media2" style = "left:20%;" >
					<h2 style = "font-family: GmarketSansMedium !important;">엄마의 마음으로,<br />
					마미랑<br></h2>
					<h4 style = "font-family: GmarketSansMedium !important;" >대한민국 1등 베이비시터 매칭 서비스</h4>
					<ul class="actions special">
							<li><a href="join.jsp" class="button large primary media13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;가입하기&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
					</ul>
					
				</div>
			<a href="#one" class="more scrolly">Learn more ...</a>
			</section>

		<!-- Main -->
			<div id="main" class="container">

				<!-- One 간단 문구 -->
					<section id="one" class="feature major ">
						<img id = "logo" src = "images/로고1.png" ><br><br>
						<p><strong>육아</strong>에 <strong>도움</strong>이 필요한 <strong>부모님</strong>들을 위해 <br><strong>언제 어디서나</strong> 마미랑이 함께 하겠습니다. </p>
					</section>
            </div>
            <!-- 마미랑은 어떤 서비스? -->
            <div style = "position: relative;" >
               <div > <img src="images/background.png"; style ="width: 100%;"></img></div>
               <img src="images/connect.png"; style ="width: 30%; top:12%; right: 15%; position: absolute;" class="media10">
                <h2 class = "textOnImg media11">마미랑은 어떤 서비스인가요?</h2>
               <h4 class = "textOnImg media12" style="top:27%; font-family: 'GmarketSansLight'!important;"> 
                마미랑은 맞벌이로 인해 바쁜 부모님들을 대신해<br>
                내 아이를 믿고 맡길 수 있는 베이비시터를 <br>
                간편하게 찾아주는 
                <strong style = "font-family: GmarketSansMedium !important; color:white">베이비시터 매칭 서비스</strong> 입니다.</h4>
                <img src="images/물결.png"; class = "wave media13">
                <p class = "textOnImg media22" style="top: 53%; font-size: 14px; line-height: 21px; color: black;">
                    원하는 시간대에 내 아이에게 필요한 돌봄유형을 선택하여<br>
                    다양하고 까다로운 부모님의 니즈를 충족할<br>
                    베이비시터를 찾을 수 있는 공유 경제 서비스 입니다. </p>
                    <ul class="actions special media14" >
						<li><a href="searchMomCopy.jsp" class="button large primary media15" style = "position: absolute;
                            color:#ffb61a !important;
                            background-color: white !important;
                            left: 22%;
                            top: 73%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;마미랑 둘러보기&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
					</ul>
    
            </div>
           <div id="main" class="container media16">
				<!-- Two 마미랑 이용 방법 -->
					<section id="two" class="feature media17">
						<div>
                            <h2 class = "mainTitle media18">마미랑은 어떻게 이용하나요?</h2>
                            <!-- 슬라이더 배너 -->
                            <div class="section media19"> 
                                <input type="radio" name="slide" id="slide01" checked>
                                <input type="radio" name="slide" id="slide02">
                                <input type="radio" name="slide" id="slide03">
                                <div class="slidewrap">
                                    
                                    <ul class="slidelist media20" style = "margin: -15px 0 2em 0;">
                                        <!-- 슬라이드 영역 -->
                                        <li class="slideitem">
                                            <a>
                                                <div class="textbox media21">
                                                    <h3 class = "slideText media17">첫번째 슬라이드</h3>
                                                    <p class="media15">첫번째 슬라이드 입니다.</p>
                                                </div>
                                                <img src="./images/slide1.png">
                                            </a>
                                        </li>
                                        <li class="slideitem">
                                            <a>
                                                
                                                <div class="textbox">
                                                    <h3 class = "slideText media17">두번째 슬라이드</h3>
                                                    <p class="media15">두번째 슬라이드 입니다.</p>
                                                </div>
                                                <img src="./images/slide2.png">
                                            </a>
                                        </li>
                                        <li class="slideitem">
                                            <a>
                                                
                                                <div class="textbox">
                                                    <h3 class = "slideText media17">세번째 슬라이드</h3>
                                                    <p class="media15">세번째 슬라이드 입니다.</p>
                                                </div>
                                                <img src="./images/slide3.png">
                                            </a>
                                        </li class="slideitem">
                            
                                        <!-- 좌,우 슬라이드 버튼 -->
                                        <div class="slide-control media14">
                                            <div>
                                                <label for="slide03" class="left"></label>
                                                <label for="slide02" class="right"></label>
                                            </div>
                                            <div>
                                                <label for="slide01" class="left"></label>
                                                <label for="slide03" class="right"></label>
                                            </div>
                                            <div>
                                                <label for="slide02" class="left"></label>
                                                <label for="slide01" class="right"></label>
                                            </div>
                                        </div>
                            
                                    </ul>
                                    <!-- 페이징 -->
                                    <ul class="slide-pagelist">
                                        <li><label for="slide01"></label></li>
                                        <li><label for="slide02"></label></li>
                                        <li><label for="slide03"></label></li>
                                    </ul>
                                </div>
                            
                                
                            </div>
                        </div>	
					</section>

				<!-- Three 커뮤니티 -->
                </div>
                <img src = "./images/crop.jpg" style = "width: 100%;">
                <div id="main" class="container">
					<section id="three" class="feature">
                        <div style = "padding-left:10%; position: relative">
                            <h4 style ="margin-top:-50px; left:10px" class="media3">마미랑 커뮤니티에서 또래의 아기를 키우는 부모님 또는 시터들과 소통해보세요.</h4>
                                <h5 style = "margin-top:-11px;" class="media4">육아를 하면서 겪는 나만의 경험, 다양한 주제의 이야기들을 만나보세요.  </h5>
                            	<div style = "position:absolute; top:1px; right:10%;" class="media5">

                                <ul class="actions special">
                                    <li><a href="community2.jsp" class="button large media6">
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;커뮤니티 가기&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
                                </ul>
								
                       		 </div>
								<br><br>
						</div>
					</section>
				</div>
				<!-- 마지막 섹션  -->
				<div style = "position:relative; text-align: center;">
					<section id="four" class="feature major">
						<img src = "images/lastBackground.png" style ="width: 100%; margin-bottom: -7px !important;" class="media7">
						<!-- position:absolute 중앙 정렬 -->
						<div style = "position:absolute; top:50%; left:50%; transform:translate(-50%, -45%);">
							<h2 class = "slideText media8" style = "color:#ff7065; font-size: 2.4em;">아이와 엄마가 행복해지는 마미랑</h2>
							<p style = "color: #2E3364; font-weight: bold;" class="media9"> 내 아이에게 딱 맞는 우리 동네 베이비시터, 마미랑으로 만나보세요.</p>
							<ul class="actions special">
								<li><a href="join.jsp" class="button large primary media13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;가입하기&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
							</ul>
						</div>
						
					</section>

			</div>
		<!-- Aside -->
  <div class="wrapper">
            <div class="inner">
               <jsp:include page="aside.jsp"/>
            </div>
         </div>
			
			
		<!-- footer -->
			<div class="wrapper">
				<div class="inner">
				   <jsp:include page="footer.jsp"/>
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
</html>