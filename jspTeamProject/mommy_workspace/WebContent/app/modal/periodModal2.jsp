<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=
    , initial-scale=1.0">
    
    <link href="${pageContext.request.contextPath}/assets/css/periodModal2.css" rel="stylesheet" type="text/css">
	
    <title>Document</title>
</head>

<body>
    <div class="main">
        <hr>
      <div style="text-align: center;
    background-color: #ffb61a9e;
    height: 41px;
    padding: 11px;
    line-height: 2.3;
    padding-bottom: 19px;
    color: white;
    font-size: 19px;"> <h3 style="display: inline;">활동 기간/시간 입력</h3></div> 
   
     <br>
      <h4 style="display: inline-block; width: 150px;">활동 시작일</h4>
        
       <div class="input_date_box" style="display: inline-block;">
        <input type="date" placeholder="날짜를 입력해주세요">
     
      </div>
  
        <hr>
      <h4>활동요일</h4>
        <button class="days">월</button>
        <button class="days">화</button>
        <button class="days">수</button>
        <button class="days">목</button>
        <button class="days">금</button>
        <button class="days">토</button>
        <button class="days">일</button>
        <br><br>
        <hr>
        <h4>활동 시간</h4>
        
        <button class="times">09:00~12:00</button>
        <button class="times">12:00~15:00</button>
        <button class="times">15:00~18:00</button>
        <br><br>
        <hr>

        <h4>원하는 활동 기간 </h4>
        
        <button class="term">1주일 이상</button>
        <button class="term">1개월 이상</button>
        <button class="term">3개월 이상</button>
        <button class="term">6개월 이상</button>

        <button style="background-color: #ffb61a; color: white; font-weight: bold; font-size: 20px;
            width: 300px; height: 50px; border: none; margin-top: 35px; border-radius: 25px;
            cursor: pointer;
        ">완료</button>

    </div>
</body>
<script src="${pageContext.request.contextPath}/assets/js/periodModal2.js"></script>
</html>