<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=
    , initial-scale=1.0">
    <title>Document</title>
</head>
<style>
  
    .days{
        border: none;
        border-radius: 25px;
        width: 30px;
        height: 30px;
        margin: 0 7.5px;
        cursor: pointer;
    }
    .times{
        margin: 0 8px;
    background-color: white;
    border: 1px solid #ddd;
    height: 46px;
    border-radius: 25px;
    cursor: pointer;
}
    

    .term{

        margin:0 5px;
        margin: 0 5px;
        height: 39px;
        background-color: white;
        border: 1px solid #ddd;
        cursor: pointer;
    }

  

    input[type="date"]{
        position: relative;
        min-height:20px;
        padding: 10px 12px;
        border: 1px solid #ddd;
        border-radius: 25px;
        font-size:18px;
        }

        input[type="date"]::-webkit-clear-button,
        input[type="date"]::-webkit-inner-spin-button { 
            display: none;
        } 
        input[type="date"]::-webkit-calendar-picker-indicator { 
            background: transparent;
            z-index: 1;
        } 

        .input_date_box input:after{
        position: absolute;
        top:50%;
        right:10px;
        content: '';
        width: 20px;
        height:22px;

        background: #fff url(images/캘린더.png) center center /contain;
        transform: translateY(-50%);
        z-index: 0;
        }

        button:focus {
         background-color:#ffb61a;
         color: white;
         font-size: bold;
         border: none;
}
    
    .main{
        width: 500px;
        text-align: center;
      
    }
    hr{
        color: #bbb;
    }

</style>
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

        <h4>활동 가능 기간 </h4>
        
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
</html>