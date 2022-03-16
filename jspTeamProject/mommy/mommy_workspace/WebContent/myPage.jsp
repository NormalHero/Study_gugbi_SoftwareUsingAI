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
        <link rel="stylesheet" href="assets/css/main.css" />
        </head>
    <style>
		
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

 	#main{
	margin-top: 55px !important;
    margin-left: 0px !important;
    width: 99% !important;
	} 

	.media-main{
	width:100% !important;
	}

        .container.medium {
            width: 70% !important;
            padding: 0 !important;
            margin-top:90px !important;
           
        }
		
        .notice{
           margin-left: 144px !important;
        }


        .innerTitle, .openBtn{
            font-size:15px;
            font-weight: 700;
            line-height: 1.44;
            letter-spacing: -.01875rem;
            margin: 5px 0 5px 0;
            color:#626c6e !important;
            cursor: pointer;
        }

        hr.sp{
            margin-top: 25px;
            border-bottom: solid 1px #d4cfcf;
            margin-bottom: 8\px;
        }

        hr.split{
            margin-top: 8px;
            border-bottom: solid 1px #d4cfcf;
            margin-bottom: 8px;
        }
        .boldButtonYel{
                font-size: 13px;
             color: white;
             font-weight: bold;
             background: #ffb61a;
             margin-top:5px;
             height: 25px;
             border: hidden;
             border-radius: 8px;
             margin-right: 20px; float:right;
        }

        .boldButtonBlu{
                font-size: 13px;
			    color: white;
			    font-weight: bold;
			    background: #1E90FF;
			    height: 25px;
			    border: hidden;
                margin-top:5px;
			    border-radius: 8px;
                margin-right: 20px; float:right;
        }

        .boldButtonRed{
                font-size: 13px;
			    color: white;
			    font-weight: bold;
			    background: #D1180B;
			    height: 25px;
			    border: hidden;
                margin-top:5px;
			    border-radius: 8px;
                width:66px;
                margin-right: 20px; float:right;
        }

        .boldButtonGray{
            font-size: 13px;
			    color: white;
			    font-weight: bold;
			    background: #b7b7b7;
			    height: 25px;
			    border: hidden;
			    border-radius: 8px;
                }
        
        .innerContent{
          padding:10px 10px 10px 10px;

        }

        .innerContent:hover{
            background-color: #f6f6f6;

        }

        .mainBox{
            display: none;
    width: 148% !important;
    padding: 2px !important;
    margin-left: 0px !important;
    margin-right: -115px !important;
    margin-bottom: 10px !important;
    padding-bottom: 43px !important;
    padding-top: 26px !important;
        }

        .mainTitle{
            font-family: 'GmarketSansMedium';
            font-size:30px;
        }


}



        .container.medium {
            width: 70% !important;
            padding: 0 !important;
            margin-top:90px !important;
           
        }
		
        .notice{
           
            text-align: left;
            font-family: 'GmarketSansLight';
        }


        .innerTitle, .openBtn{
            font-size:15px;
            font-weight: 700;
            line-height: 1.44;
            letter-spacing: -.01875rem;
            margin: 5px 0 5px 0;
            color:#626c6e !important;
            cursor: pointer;
        }

        hr.sp{
            margin-top: 25px;
            border-bottom: solid 1px #d4cfcf;
            margin-bottom: 8\px;
        }

        hr.split{
            margin-top: 8px;
            border-bottom: solid 1px #d4cfcf;
            margin-bottom: 8px;
        }
        .boldButtonYel{
                font-size: 13px;
             color: white;
             font-weight: bold;
             background: #ffb61a;
             margin-top:5px;
             height: 25px;
             border: hidden;
             border-radius: 8px;
             margin-right: 20px; float:right;
        }

        .boldButtonBlu{
                font-size: 13px;
			    color: white;
			    font-weight: bold;
			    background: #1E90FF;
			    height: 25px;
			    border: hidden;
                margin-top:5px;
			    border-radius: 8px;
                margin-right: 20px; float:right;
        }

        .boldButtonRed{
                font-size: 13px;
			    color: white;
			    font-weight: bold;
			    background: #D1180B;
			    height: 25px;
			    border: hidden;
                margin-top:5px;
			    border-radius: 8px;
                width:66px;
                margin-right: 20px; float:right;
        }

        .boldButtonGray{
            font-size: 13px;
			    color: white;
			    font-weight: bold;
			    background: #b7b7b7;
			    height: 25px;
			    border: hidden;
			    border-radius: 8px;
                }
        
        .innerContent{
          padding:10px 10px 10px 10px;

        }

        .innerContent:hover{
            background-color: #f6f6f6;

        }

        .mainBox{
            width:75%; background-color:#f6f6f6; padding:90px; padding-bottom: 150px;
        }

        .mainTitle{
       
            margin-left: 24px !important;
        }




        /* 예원님 찜 목록 */

        .userPf{
	position: relative;
    background-color: white;
    width: 100%;
    height: 222px;
    border-radius: 20px;
    border: 1px solid #d4cfcf;
    margin-bottom: 15px;
		}

        .heart{
			width: 34px;
			position: absolute;
			margin-top: 22px;
    		margin-left: 93%;
		}

        .userImg{
			width: 27% !important;
            margin-left: 18px !important;
    margin-top: 20px;
		}
		.userImgDetail{
			width:70%;
			border-radius: 20px;
			
		}
		.userName{
			float: left;
   			margin-top: 39px;
    		margin-left: 17px;
			width: 65%;
		}

        p.p{
			    margin-bottom: 0;
    width: 140px;
    font-size: 16px;
    padding-right: 13px;
    padding-top: 0px;
    margin-top: -2px;

		}

        .infoDetail{
			display: inline; 
			font-size: 14px;
		}

        .chatIcon{
			width: 21px;
   		 margin-top: 4px;
		}
        .star{
			width: 17px;
			display: flex;
		}

		


        /* 탈퇴 모달 */
        .modal {
          position: fixed;
          top: 0;
          left: 0;
          width: 100%;
          height: 100%;
          display: flex;
          justify-content: center;
          align-items: center;
          overflow:hidden;
        }

        .modal .bg {
          width: 100%;
          height: 100%;
          background-color: rgba(0, 0, 0, 0.6);
        }

        .modalBox {
          position: absolute;
          background-color: #fff;
          width: 400px;
          height: 330px;
          padding: 15px;
          border-radius: 6px;
          text-align: center;
        }

        .modalBox button {
          display: block;
          width: 80px;
          margin: 0 auto;
        }

        .hidden {
          display: none;
        }
        
        .modalText{
            margin: 30px 0;
            font-family: 'GmarketSansMedium';
            color:black;

        }

        .modalSubText{
            font-size:16px;
        }

        button.submitBtn {
          background-color: #F9B514;
          padding: 5px 10px;
          border-radius: 4px;
          border:hidden;
          cursor: pointer;font-family: 'GmarketSansMedium';
            width:50%;
            height:50px;
            color:white;
        }

        .quit{
            font-size: 14px;
            color: #d4cfcf;

        }

        .infoWrapper{
            width:70%;
            margin: 0 auto;
        }

        .p-font-color{
            font-size:16px;
            margin-bottom:4px !important;
        }

        .input-font{
            font-size:17px;
        }

        input[type="text"], input[type="password"], input[type="email"], select, textarea {
            background-color: white;
            color:black;
        }

        .phoneBtn{
            background-color: #ffb61a;
            border: hidden;
            width:20%;
            font-weight: bold;
            color:white;
        }

        input.uploadButton{
        font-size: 16px !important; 
        height: 45px !important; 
        line-height: 1.2em !important; 
        color:white !important; 
        background: #ffb61a !important;  
        box-shadow: inset 0 0 0 1px #ffb61a !important; 
        width:180px !important;
        
        }

        .mainTitle2{
 font-size:30px;
font-family: 'GmarketSansMedium';
margin-left: 45px;
}

.mainBox2{
padding: 15px;

}
.inline-block{
display: inline-block;

}
p.userInfo{
font-family: 'GmarketSansMedium';
margin: 0px; font-size: 16px;

}
.userInfoDiv{
background-color: rgba(255, 255, 255, 0.952);
width: 160px;
height: 220px;
text-align: center;
position: relative;
border-radius: 12px;
margin-left: 45px;
margin-top: 25px;
border: 1px solid #dfdfdf;
overflow: hidden;

}

		</style>



		
	
	<body class="is-preload">
	<!-- Header -->
         <div class="wrapper">
            <div class="inner">
               <jsp:include page="header.jsp"/>
            </div>
         </div>
		
		
		<!-- Main -->
		<div id="main" class="container medium">
				<header class="major" style = "margin: 0 !important;">
					<h2 class = "notice" style = "font-size: 1.35em; line-height: 1.5em;">마이페이지</h2>
				</header>
                <hr style = "margin: 10px 0 0 0 !important; border-bottom: solid 1.7px #b7b7b7;">
	<!-- Content -->
          <div style = "display: flex;;">
            <!--프로필 수정-->
            <div style="width:38%; font-size:16px; padding:40px 0;" class="media-main">
                    <div id = "profile" style = "position: relative; margin-left:20px;">
                        <label><input type="file" style="display:none;">
                        <img src="images/프로필.png" style="width: 100px; border-radius: 150px; cursor: pointer; ">
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
                            <a href = "lookSitterProfile2.jsp"><p class ="innerTitle">내 구인/구직 글</p></a>
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
                            <a href="ask.jsp"><p class ="innerTitle">내 문의내역</p></a>
                        </div>

                        <div class = "innerContent">
                            <img src="https://assets.cdn.soomgo.com/icons/icon-mypage-list-arrow.svg" style="float:right;margin-top: 5px;">
                            <a href="community2.jsp"><p class ="innerTitle">내 커뮤니티 글</p></a>
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
				
<!--aside-->
       
               
		
		
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
          <script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>

	</body>
   <script>
   const $main = $('.media-main');
	  const $mainBox=$('.mainBox');

   
   
   var contents = $.ajax({
		url: "myPageInfo.jsp", 		// 통신할url
		dataType: "html",			//전송받은 데이터를 변환시킬 컨텐츠 타입
		type:"get"	,
		success:function(e){
			$('div#informatiom').html(e);
		},
		error:function(){
			alert("실패");
		}
		
		});
   
  const $lookProfile=$('#lookProfile');
  const $bookMark =$('#bookMark');
  const $changePw = $('#changePw');
  const $information = $('#information');
  
	
	$changePw.on("click",function(){
		
		contents=$.ajax({
			url: "myPageChangePw.jsp", 		// 통신할url
			dataType: "html",			//전송받은 데이터를 변환시킬 컨텐츠 타입
			type:"get"	,
			success:function(e){
				$('div#informatiom').html(e);
			},
			error:function(){
				alert("실패");
			}
			
			});
		
		 if (window.matchMedia("(max-width: 700px)").matches) {
				$main.css('display','none');
		  		$mainBox.css('display','block');}
	});
 	
	
	$lookProfile.on("click",function(){
	
		contents=$.ajax({
			url: "lookSitterProfile.jsp", 		// 통신할url
			dataType: "html",			//전송받은 데이터를 변환시킬 컨텐츠 타입
			type:"get"	,
			success:function(e){
				$('div#informatiom').html(e);
			},
			error:function(){
				alert("실패");
			}
			
			});
		
		 if (window.matchMedia("(max-width: 700px)").matches) {
				$main.css('display','none');
		  		$mainBox.css('display','block');}
	});
   	
	$information.on("click",function(){
		
		contents=$.ajax({
			url: "myPageInfo.jsp", 		// 통신할url
			dataType: "html",			//전송받은 데이터를 변환시킬 컨텐츠 타입
			type:"get"	,
			success:function(e){
				$('div#informatiom').html(e);
			},
			error:function(){
				alert("실패");
			}
			
			});
		
		 if (window.matchMedia("(max-width: 700px)").matches) {
				$main.css('display','none');
		  		$mainBox.css('display','block');}
	});
   	

	$bookMark.on("click",function(){
	
		contents=$.ajax({
			url: "myPageHeart.jsp", 		// 통신할url
			dataType: "html",			//전송받은 데이터를 변환시킬 컨텐츠 타입
			type:"get"	,
			success:function(e){
				$('div#informatiom').html(e);
			},
			error:function(){
				alert("실패");
			}
			
			});
		
		 if (window.matchMedia("(max-width: 700px)").matches) {
				$main.css('display','none');
		  		$mainBox.css('display','block');}
	});
   	
  
	
  
  
  
  
  
  
  
  
  
   </script>

<script>

    const open = () => {
      document.querySelector(".modal").classList.remove("hidden");
      console.log("check");
    }
  
    const close = () => {
      document.querySelector(".modal").classList.add("hidden");
    }
  
    
    document.querySelector(".openBtn").addEventListener("click", open);
    document.querySelector(".submitBtn").addEventListener("click", close);
    document.querySelector(".quit").addEventListener("click", close);
    document.querySelector(".bg").addEventListener("click", close);
  
    
  </script>
  
  
  
</html>