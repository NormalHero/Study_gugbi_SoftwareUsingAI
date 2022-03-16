<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
		<title>로그인 모달창</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
		<link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
		<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
</head>
    <meta charset="UTF-8">
    <title>Modal</title>
    <style>
    	
    	a-button {
    	
    	}
    	a .button-size01 {
   			position: relative;
   			height: 50px;
   			width: 100%;
   			font-size: 23px;
   			background: #ffb61a;
   			border: none;
   			color: #f6f6f6;
   			border-radius: 4px;
   			cursor: pointer;
		}
	
        #modal.modal-overlay {
            width: 100%;
            height: 100%;
            position: absolute;
            left: 0;
            top: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            background: gray;
            box-shadow: 0 8px 32px 0 rgba(31, 38, 135, 0.37);
            backdrop-filter: blur(1.5px);
            -webkit-backdrop-filter: blur(1.5px);
            border-radius: 10px;
            border: 1px solid rgba(255, 255, 255, 0.18);
        }
        #modal .modal-window {
            background: white;
            backdrop-filter: blur( 13.5px );
            -webkit-backdrop-filter: blur( 13.5px );
            border-radius: 10px;
            width: 400px;
            height: 550px;
            position: relative;
            padding: 15px;
            text-align: center;
        }
        #modal .title {
            padding-left: 10px;
            display: inline;
            color: black;
            
        }
        #modal .title h3 {
            display: inline;
            color :#ffb61a;
        }
        #modal .close-area {
            display: inline;
            float: right;
            cursor: pointer;
            color: white;
            position: relative;
            left: 180px;
        }
        
        #modal .content {
            margin-top: -60px;
            padding: 0px 10px;
            color: black;
        }
    </style>
<body>
    
    <div id="modal" class="modal-overlay">
            <div class="close-area">닫기</div>
        <div class="modal-window">
            <div class="title">
                <h3>1분만에 회원가입하고</h3>
            </div>
            <div class="content">
                <br>
                <br>
                <br>
                <img alt="icon" src="https://cdn.mom-sitter.com/momsitter-app/static/public/affordance/popup-image-1.svg">
                <p>시터의 다양한 인증을 빠르고 정확하게 확인!</p>
                <img alt="icon" src="https://cdn.mom-sitter.com/momsitter-app/static/public/affordance/popup-image-2.svg">
                <p>시터의 활동 가능 시간을 쏙쏙 확인!</p>
                <img alt="icon" src="https://cdn.mom-sitter.com/momsitter-app/static/public/affordance/popup-image-3.svg">
                <p>부모 회원이 작성한 리뷰까지 챙겨보자!</p>
                <a class= "a-button" href ="join.jsp"><button class="button-size01">가입하기</button></a>
                
            </div>
        </div>
    </div>
    <script>
       	const closeBtn = modal.querySelector(".close-area")
		closeBtn.addEventListener("click", e => {
  		modal.style.display = "none"
		})
    </script>
</body>
</html>
