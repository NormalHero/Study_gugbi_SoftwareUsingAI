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


	@media(max-width:400px){


        .infoWrapper{
                margin-left: 24px !important;
        }

      
	}

        .container.medium {
            width: 70% !important;
            padding: 0 !important;
           
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
            width:100%; background-color:#f6f6f6; padding:90px; padding-bottom: 150px;
        }

        .mainTitle{
            font-family: 'GmarketSansMedium';
            font-size:30px;
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



		
	
	<body >

                 <!--비밀번호 변경 -->
                 <div>
                    <h4 class = "mainTitle"> 비밀번호 변경</h4>
                    <div class = "infoWrapper">
                            
                            <div>
                                 <p class="p-font-color">기존 비밀번호 </p>
                                 <input type="password" class="input-font" style="width: 95%;" placeholder="기존 비밀번호를 입력해주세요.">
                             </div>
                                 <br>
                                 <div>
                                    <p class="p-font-color">새로운 비밀번호 </p>
                                    <input type="password" class="input-font" style="width: 95%;" placeholder="새 비밀번호를 입력해주세요.">
                                </div>
                                    <br>
                                 <div>
                                        <p class="p-font-color">새로운 비밀번호 확인</p>
                                        <input type="password" class="input-font" style="width: 95%;" placeholder="새 비밀번호를 입력해주세요.">
                                    </div>
                                        <br>
                                        <br><br>
                                        <div style = "text-align: center;">
                                        <input class="uploadButton" type="submit" value="변경"onclick="location.href='#'"><br>
                                    </div>
                    </div>
                </div> <!-- 비번 변경 끝 -->


 


		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>
          

	</body>
   


</html>