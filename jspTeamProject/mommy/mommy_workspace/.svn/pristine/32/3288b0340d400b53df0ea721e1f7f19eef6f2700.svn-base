<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
       <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
      <link rel="stylesheet" href="assets/css/main.css" />
    <title>내 프로필 수정</title>
<style>

div#main{
padding-top: 24px !important;
}

.heart{
width: 25px;
    margin-left: 6px;
    position: absolute;
    top: 2px;
}

a.a{
color: gray;
    border: none;
    cursor: pointer;

}

aside.aside2{
    position: fixed;
    left: 67% !important;
    top: 14% !important;
}

div#main {
    padding: 3.5em 0 3.5em 0;
}


.buttonAside{
            background: #ffb61a;
            height: 43px;
            color: white !important;
            box-shadow: none;
            border-radius: 0.25rem !important;
            width: 100%;
            border: hidden;
            font-weight: bold;
            font-size:16px;
        }

        .buttonAside:hover,
      .buttonAside:active {
         box-shadow: inset 0 0 0 1px #ffb61a;
         color: white !important;
        }
.selectBox2 * { box-sizing: border-box; }
.selectBox2 {
    position: relative;
    width: 150px;
    height: 35px;
    border-radius: 4px;
    border: 2px solid #ffb61a;
    background: url("images/v4.png") calc(100% - 7px) center no-repeat;
    background-size: 20px;
    cursor: pointer;
    margin-left: 77%;
}

.selectBox2:after {
  content: '';
  display: block; 
  width: 2px;
  height: 100%; 
  position: absolute; 
  top: 0; 
  right: 35px;
  background: #ffb61a;
}

.selectBox2 .label {
  display: flex;
  align-items: center;
  width: inherit;
  height: inherit;
  border: 0 none;
  outline: 0 none;
  padding-left: 15px;
  background: transparent;
  cursor: pointer;
}

.selectBox2 .optionList {
  position: absolute; 
  top: 28px;
  left: 0;
  width: 100%;
  background: #ffb61a;
  color: rgb(255, 255, 255);
  list-style-type: none;
  padding: 0;
  
  overflow: hidden;
  max-height: 0;
  transition: .3s ease-in;
}

.selectBox2.active .optionList {
  max-height: 500px;
  margin-top: 5px;
}

.selectBox2 .optionItem {
    border-bottom: 1px dashed #ffffff;
  padding: 5px 15px 5px;
  transition: .1s;
}

.selectBox2 .optionItem:hover {
  background: rgba(255, 255, 255, 0.493);
}

.selectBox2 .optionItem:last-child {
  border-bottom: 0 none;
}

/* 스크롤 커스텀 */
.selectBox2 .optionList::-webkit-scrollbar {width: 6px;}
.selectBox2 .optionList::-webkit-scrollbar-track {background: transparent; }
.selectBox2 .optionList::-webkit-scrollbar-thumb {background: #303030; border-radius: 45px;}
.selectBox2 .optionList::-webkit-scrollbar-thumb:hover {background: #303030;}

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
            width: 70% !important;
        }

        .button{
            background: #ffb61a;
            height: 43px;
            color: white !important;
            box-shadow: none;
        }

        .button:hover,
      .button:active {
         box-shadow: inset 0 0 0 1px #ffb61a;
         color: white !important;
        }

        .innerContent{
            padding: 1.5rem 0 0 0;
            

        }
        .innerContent2{
            padding: 1.5rem 0 0 0;
            width: 167px;

        }
        .innerTitle{
            font-size: 1.125rem;
            font-weight: 700;
            line-height: 1.44;
            letter-spacing: -.01875rem;
            margin: 0 0 20px 0;
            color:#626c6e !important;
        }

        input[type="checkbox"]:checked + label:before{
            background: #ffb61a;
            border-color: #ffb61a;
            margin-top:5px;
        }

        input[type="checkbox"] + label:before{
            height:25px;
            margin-top:5px;
        }

        hr.split{
            margin: 0px;
            padding-bottom:10px;
            width: 95%;
          
        }

        .innerModify
        {position: absolute;
    color: #ffb61a;
    top: 23px;
    font-size: 14px;
    right: 70px;
    }

    div.innerContent p{
        margin: 0 0 1em 0;
    }

    
.range {
  display: flex;
  width: 600px;
}

.range__slider {
  width: 45%;
}

.range__value {
  width: 35%;
  margin-left: 45px;    
  text-align: center;
  border-left: #e6e4e4 1px solid;
}

.form-group {
  display: flex;
  flex-direction: column; 
  justify-content: center;
}

.form-group label {
  text-transform: uppercase;
  font-size: .7rem;
  color: #222;
  margin-bottom: 5px;
}

.form-group span {
  font-size: 2;
  font-weight: 600;
  color: #3c3b3b;
}

.range__slider label {
  margin-bottom: 10px;
}

.range__slider [type="range"] {
  width: 100%;
  -webkit-appearance: none;
  height: 13px;
  border-radius: 6px;
  background: #f1f1f1;
  outline: none;
  padding: 0;
  margin: 0;
}

/* custom thumb */
.range__slider [type="range"]::-webkit-slider-thumb {
  -webkit-appearance: none;
  appearance: none;
  width: 25px;
  height: 25px;
  border-radius: 50%;
  background: #ff7065;
  border: #f9ca24 5px solid;
  cursor: pointer;
  -webkit-transition: background .15s ease-in-out;
  transition: background .15s ease-in-out;
}

.range__slider [type="range"]::-webkit-slider-thumb:hover {
  background: #f0932b;
}

.range__slider [type="range"]::-moz-range-thumb {
  width: 20px;
  height: 20px;
  border: 0;
  border-radius: 50%;
  background: #f0932b;
  border: #f9ca24 5px solid; cursor: pointer;
  -webkit-transition: background .15s ease-in-out;
  transition: background .15s ease-in-out;
}

.range__slider [type="range"]::-moz-range-thumb:hover {
  background: #f9ca24;
}

/* remove border */
input::-moz-focus-inner, input::-moz-focus-outer {
  border: 0;
}

.imgIcon{
    width: 20px;
    margin-right: 10px;
}

.liCss{
    margin-bottom: 16px;
    font-size: 15px;
    display: inline-block;
}
.reviewText{
    font-weight: bold;
    font-size: 16px;
    margin-left: 12px;
}
.reviewTextDetail{
    display: inline-block;
  
    font-size: 14px;
}
.ment{
    font-size: 19px;
    margin-left: 10px;
    height: 36px;
    line-height: 2.5;
}


/*------------------------------------------------------------------------------------------------------  */
@media (max-width: 576px){
#header{width: 74%;}



aside.aside2{
    position: fixed;
    left: 67% !important;
    top: 14% !important;
}

div#main {
width: 87% !important;
    padding: 3.5em 0 3.5em 0;
    margin-top: 18px !important;
}


.buttonAside{
            background: #ffb61a;
            height: 43px;
            color: white !important;
            box-shadow: none;
            border-radius: 0.25rem !important;
            width: 100%;
            border: hidden;
            font-weight: bold;
            font-size:16px;
        }

        .buttonAside:hover,
      .buttonAside:active {
         box-shadow: inset 0 0 0 1px #ffb61a;
         color: white !important;
        }

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
            width: 70% !important;
        }

        .button{
            background: #ffb61a;
            height: 43px;
            color: white !important;
            box-shadow: none;
        }

        .button:hover,
      .button:active {
         box-shadow: inset 0 0 0 1px #ffb61a;
         color: white !important;
        }

        .innerContent{
            padding: 1.5rem 0 0 0;
            

        }
        .innerContent2{
            padding: 1.5rem 0 0 0;
            width: 167px;

        }
        .innerTitle{
            font-size: 1.125rem;
            font-weight: 700;
            line-height: 1.44;
            letter-spacing: -.01875rem;
            margin: 0 0 20px 0;
            color:#626c6e !important;
        }

        input[type="checkbox"]:checked + label:before{
            background: #ffb61a;
            border-color: #ffb61a;
            margin-top:5px;
        }

        input[type="checkbox"] + label:before{
            height:25px;
            margin-top:5px;
        }

        hr.split{
            margin: 0px;
            padding-bottom:10px;
            width: 95%;
          
        }

        .innerModify
        {position: absolute;
    color: #ffb61a;
    top: 23px;
    font-size: 14px;
    right: 70px;
    }

    div.innerContent p{
        margin: 0 0 1em 0;
    }

    
.range {
  display: flex;
  width: 600px;
}

.range__slider {
  width: 45%;
}

.range__value {
  width: 35%;
  margin-left: 45px;    
  text-align: center;
  border-left: #e6e4e4 1px solid;
}

.form-group {
  display: flex;
  flex-direction: column; 
  justify-content: center;
}

.form-group label {
  text-transform: uppercase;
  font-size: .7rem;
  color: #222;
  margin-bottom: 5px;
}

.form-group span {
  font-size: 2;
  font-weight: 600;
  color: #3c3b3b;
}

.range__slider label {
  margin-bottom: 10px;
}

.range__slider [type="range"] {
  width: 100%;
  -webkit-appearance: none;
  height: 13px;
  border-radius: 6px;
  background: #f1f1f1;
  outline: none;
  padding: 0;
  margin: 0;
}

/* custom thumb */
.range__slider [type="range"]::-webkit-slider-thumb {
  -webkit-appearance: none;
  appearance: none;
  width: 25px;
  height: 25px;
  border-radius: 50%;
  background: #ff7065;
  border: #f9ca24 5px solid;
  cursor: pointer;
  -webkit-transition: background .15s ease-in-out;
  transition: background .15s ease-in-out;
}

.range__slider [type="range"]::-webkit-slider-thumb:hover {
  background: #f0932b;
}

.range__slider [type="range"]::-moz-range-thumb {
  width: 20px;
  height: 20px;
  border: 0;
  border-radius: 50%;
  background: #f0932b;
  border: #f9ca24 5px solid; cursor: pointer;
  -webkit-transition: background .15s ease-in-out;
  transition: background .15s ease-in-out;
}

.range__slider [type="range"]::-moz-range-thumb:hover {
  background: #f9ca24;
}

/* remove border */
input::-moz-focus-inner, input::-moz-focus-outer {
  border: 0;
}

.imgIcon{
    width: 20px;
    margin-right: 10px;
}

.liCss{
    margin-bottom: 16px;
    font-size: 15px;
    display: inline-block;
}
.reviewText{
    font-weight: bold;
    font-size: 16px;
    margin-left: 12px;
}
.reviewTextDetail{
    display: inline-block;
  
    font-size: 14px;
}
.ment{
    font-size: 19px;
    margin-left: 10px;
    height: 36px;
    line-height: 2.5;

}

.moMain{
width: 100% !important;
}


.moAd1{
margin-left: -1% !important;
}

.selectBox2{
    margin-left: 220px !important;
    width: 112px !important;
}

.media_correct{
 margin-left: 63px;
}
.aside2{
display:none;
}
.media_star{
   display:none;
}



}

</style>

</head>

<body>
<!-- Aside -->
  <div class="wrapper">
            <div class="inner">
               <jsp:include page="aside.jsp"/>
            </div>
         </div>


    <!-- Header -->
         <div class="wrapper">
            <div class="inner">
               <jsp:include page="header.jsp"/>
            </div>
         </div>
      <aside class = "aside2">
        
        <div style="
        width: 300px; 
        border : solid 1px #e2eaec;
        overflow: hidden;
        padding: 25px;
        background-color: white;
        ">
        <div>
           <h5 style = "font-weight:500">채팅 신청하기</h5>
               <a href = "javascript:winPopup()"><button class = "buttonAside" style="background-color:#ff7065 !important;">채팅 신청하기</button></a>
           </div>
        </div>
        <br>
        <div style="
        width: 300px; 
        border : solid 1px #e2eaec;
        overflow: hidden;
        padding: 25px;
        background-color: white;
        ">
        
        
            <div>
                <h5 style = "font-weight:500">시터 찾기 바로가기</h5>
                <p style = "font-size:16px;">다른 시터들의 프로필을 확인해보세요! 마미랑만의 인증 시스템을 거친 믿음직한 시터들을 지금 바로 만나보세요.</p>
                <a href = "searchMomCopy.jsp;"><button class = "buttonAside">시터 찾기</button></a>
            </div>
        </div>
  
    </aside>
         
         
         
      <!-- Main -->
      
      <div id="main" class="container medium">
         <!-- profile header -->
                  <p style="font-size: 15px; width: 57%; margin-top: -46px; display: inline-block;">작성시간[2022-03-07]</p>
                     <div style="display:inline; position: relative;" class="media_correct">
                     <a class="a" style="font-size:17px;">수정</a> &nbsp;&nbsp;&nbsp;
                    
                      <a class="a" style="font-size:17px;">삭제</a>  
                     </div>
                  <br>
         
            <div  class="moMain" style = "width: 70%; background: white; position:relative;">
            
                <div style="text-align: left; display:inline-block; margin-left:15px;">
                    <label><input type="file" style="display:none;">
                    <img src="images/img1.jpg" style="width: 100px; border-radius: 150px; cursor: pointer; ">
                    </label>
                    <div style = "position:absolute; top: 20px; left: 136px;">
                     <h3 style="margin-bottom: 3px; font-size: 18px;">김아무개
                          <img src="images/heart.png" class="heart" id="heart"></h3><span style = "margin-top: 20px; font-size:16px;">29세, 여</span>
                     </div>
                     <div  style = "position:absolute; top: 30px; left: 640px;" class="media_star">
                        <!-- <img src="images/star.png" style="width: 30px; font-size: 12px;"> -->
                      
                     </div>
                </div>
                <hr class="split">
                <div class = "innerContent">
                <p class ="innerTitle" >한 줄 소개</p>
                
                <div style = "float:left; margin-right:30px; margin-top: 20px;">
                    <p style="margin: 0;  font-size: 15px; color:#797d7e;
                       
                    ">안녕하세요:) 잘부탁드립니다.</p>
                   
                </div>


                </div>





                <hr class = "split">
                    <div class = "innerContent2" style="float: left;">
                        <p class ="innerTitle" style="margin-bottom: 29px;">기본정보</p>

                        <ul style="list-style: none; margin-left: -28px; width: 423px; margin-bottom: 0; ">
                            <li class="liCss" id="li1"> <img src="images/인증완료.png" class="imgIcon">
                            <a  class="a" onMouseOver="this.innerHTML='코로나인증, 등초본인증'" onMouseOut="this.innerHTML='인증완료 여부'"> 인증완료 여부</a> </li>
                            
                            <br><li class="liCss" id="li2"><img src="images/활동아이콘.png" class="imgIcon">
                            <a class="a" onMouseOver="this.innerHTML='실내놀이, 등하원'" onMouseOut="this.innerHTML='가능한 활동'">가능한 활동</a> </li>
                            
                            <br><li class="liCss" id="li3"><img src="images/돌봄가능연령아이콘.png" class="imgIcon">
                              <a class="a" onMouseOver="this.innerHTML='유아, 초등학생'" onMouseOut="this.innerHTML='돌봄가능 연령'">돌봄가능 연령</a></li>
                            
                            <br><li class="liCss" id="li4"><img src="images/돌봄가능기간.png" class="imgIcon">
                              <a class="a" onMouseOver="this.innerHTML='시작날짜[2022-03-07] / 3개월 이상'" onMouseOut="this.innerHTML='활동가능 기간'">활동가능 기간</a></li>
                            
                            <br><li class="liCss" id="li5"><img src="images/활동가능시간.png" class="imgIcon">
                              <a class="a" onMouseOver="this.innerHTML='오후3시~오후6시'" onMouseOut="this.innerHTML='활동가능 시간'">활동가능 시간</a></li>
                           

                        </ul>
                       

                        
                    </div>
                    <div class = "innerContent moAd1" style="float: left;  margin-left: 32%;">
                        <p class ="innerTitle" style="margin: 0;"><img src="images/지역.png" style="width: 25px; margin-right: 10px; ">활동가능 지역</p>
                        <p style="margin:0px; font-size: 14px;">(경기도 용인시 수지구 상현동)</p>
                        <div >

                        <div id="map" style="width:350px;height:220px;"class="map" ></div>
                  



                        </div>
                    </div>


                     
        
                                        
            <hr class="split" >
                <div class = "innerContent" style = "position:relative;">
                    <p class ="innerTitle" >희망 시급</p>   
                    
                    <div style="display: inline-block; width: 50px; "><img src="images/money.png" style="width: 100%;"></div>
                    <div style="
                    display: inline-block;
                    display: inline-block;
                    position: relative;
                    top: -12px;
                    left: 7px;
                    margin-bottom: -25px;"><h3>10,000원</h3></div>
                     
                </div>
                <hr class="split" >
                <div class = "innerContent" style = "position:relative;">
                    <p class ="innerTitle">후기</p>

                        <div style="display: flex;">
                        <div style="font-size: 52px; display: inline-block;">4.7</div>
                            <div style="
                            display: flex;
                            align-content: flex-start;
                            flex-direction: column;
                            line-height: 1;
                            margin-left: 5px;
                            ">
                           <div style="display: inline-block; height: 21px;"> 
                            <img src="images/star.png" width="17px" >
                            <img src="images/star.png" width="17px" >
                            <img src="images/star.png" width="17px" >
                            <img src="images/star.png" width="17px" >
                            <img src="images/star.png" width="17px" >
                            </div>
                            <div style="display: inline-block;"><span style="font-size: 15px;">5개 리뷰</span></div>
                            </div>
                        </div>
                        <div class="selectBox2 ">
                            <button class="label" style="    
                            color: #989898;
                            font-size: 15px;
                            font-weight: bold;">최신순</button>
                            <ul class="optionList">
                              <li class="optionItem">최신순</li>
                              <li class="optionItem">별점 높은순</li>
                              <li class="optionItem">별점 낮은순</li>
                            </ul>
                          </div>
                      
                    </div>

                    <!-- 후기목록란---------------------------------------------- -->
                    <hr class="split">
                    <div class = "innerContent">
                        <div style="display: flex;">
                            <div style="width: 70px;"><img src="images/후기1.png" style="width: 100%; "></div>
                            <div style="display: flex;
                            align-content: center;
                            flex-wrap: nowrap;
                            flex-direction: column;">
                            <div class="ment">"<span>오늘안에 잠들수 있을까</span>"</div>
                            <div><span class="reviewText">작성자</span>
                                    <span class="reviewTextDetail">예오닝</span>
                                <span class="reviewText">작성일</span>
                                <span class="reviewTextDetail">2022-03-07</span>
                                <span class="reviewText">평가</span>
                                <span class="reviewTextDetail">⭐⭐⭐⭐⭐</span></div>
                            </div>
                        </div>
                    </div>

                    <hr style="margin-top: 19px;
                    margin-bottom: -3px;">

                    <div class = "innerContent">
                        <div style="display: flex;">
                            <div style="width: 70px;"><img src="images/후기2.png" style="width: 100%; "></div>
                            <div style="display: flex;
                            align-content: center;
                            flex-wrap: nowrap;
                            flex-direction: column;">
                            <div class="ment">"<span>오늘안에 잠들수 있을까</span>"</div>
                            <div><span class="reviewText">작성자</span>
                                    <span class="reviewTextDetail">예오닝</span>
                                <span class="reviewText">작성일</span>
                                <span class="reviewTextDetail">2022-03-07</span>
                                <span class="reviewText">평가</span>
                                <span class="reviewTextDetail">⭐⭐⭐⭐⭐</span></div>
                            </div>
                        </div>
                    </div>



                    <hr class="split">

                    <div class = "innerContent">
                        <div style="display: flex;">
                            <div style="width: 70px;"><img src="images/후기3.png" style="width: 100%; "></div>
                            <div style="display: flex;
                            align-content: center;
                            flex-wrap: nowrap;
                            flex-direction: column;">
                            <div class="ment">"<span>오늘안에 잠들수 있을까</span>"</div>
                            <div><span class="reviewText">작성자</span>
                                    <span class="reviewTextDetail">예오닝</span>
                                <span class="reviewText">작성일</span>
                                <span class="reviewTextDetail">2022-03-07</span>
                                <span class="reviewText">평가</span>
                                <span class="reviewTextDetail">⭐⭐⭐⭐⭐</span></div>
                            </div>
                        </div>
                    </div>

                    
                    <hr class="split">

                    <div class = "innerContent">
                        <div style="display: flex;">
                            <div style="width: 70px;"><img src="images/후기2.png" style="width: 100%; "></div>
                            <div style="display: flex;
                            align-content: center;
                            flex-wrap: nowrap;
                            flex-direction: column;">
                            <div class="ment">"<span>오늘안에 잠들수 있을까</span>"</div>
                            <div><span class="reviewText">작성자</span>
                                    <span class="reviewTextDetail">예오닝</span>
                                <span class="reviewText">작성일</span>
                                <span class="reviewTextDetail">2022-03-07</span>
                                <span class="reviewText">평가</span>
                                <span class="reviewTextDetail">⭐⭐⭐⭐⭐</span></div>
                            </div>
                        </div>
                    </div>

                    
                    <hr class="split">

                    <div class = "innerContent">
                        <div style="display: flex;">
                            <div style="width: 70px;"><img src="images/후기1.png" style="width: 100%; "></div>
                            <div style="display: flex;
                            align-content: center;
                            flex-wrap: nowrap;
                            flex-direction: column;">
                            <div class="ment">"<span>오늘안에 잠들수 있을까</span>"</div>
                            <div><span class="reviewText">작성자</span>
                                    <span class="reviewTextDetail">예오닝</span>
                                <span class="reviewText">작성일</span>
                                <span class="reviewTextDetail">2022-03-07</span>
                                <span class="reviewText">평가</span>
                                <span class="reviewTextDetail">⭐⭐⭐⭐⭐</span></div>
                            </div>
                        </div>
                    </div>

                    <hr class="split">

                    <div style="text-align: center; margin-top: 30px;">
                    <img src="images/v3.png" style="width: 35px;">
                  </div>

                  </div>
                  </div>








<!-- Footer -->
   
         <div class="wrapper">
            <div class="inner">
               <jsp:include page="footer.jsp"/>
            </div>
         </div>
               
         
      
</body>
   <script src="assets/js/jquery.min.js"></script>
         <script src="assets/js/jquery.scrolly.min.js"></script>
         <script src="assets/js/browser.min.js"></script>
         <script src="assets/js/breakpoints.min.js"></script>
         <script src="assets/js/util.js"></script>
         <script src="assets/js/main.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=0fdbbaa54afec5bb9f05d991a900280f&libraries=services"></script>
<script>





//맵 api

var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = {
        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };  

// 지도를 생성합니다    
var map = new kakao.maps.Map(mapContainer, mapOption); 

// 주소-좌표 변환 객체를 생성합니다
var geocoder = new kakao.maps.services.Geocoder();

// 주소로 좌표를 검색합니다
geocoder.addressSearch('경기도 용인시 수지구 상현동', function(result, status) {

    // 정상적으로 검색이 완료됐으면 
     if (status === kakao.maps.services.Status.OK) {

        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

        // 결과값으로 받은 위치를 마커로 표시합니다
        var marker = new kakao.maps.Marker({
            map: map,
            position: coords
        });

     

        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
        map.setCenter(coords);
    } 
    map.relayout();
   map.setCenter(coords);
});    

const $heart = $('#heart');

$heart.on("click", function(){

   if($heart.attr("src")=='images/heart.png'){

      $heart.attr("src", "images/emptyHeart.png");
   }else{

      $heart.attr("src", "images/heart.png");
   }

   
});
</script>



<script>


const label = document.querySelectorAll('.label');
label.forEach(function(lb){
    lb.addEventListener('click', e => {
        let optionList = lb.nextElementSibling;
        let optionItems = optionList.querySelectorAll('.optionItem');
        clickLabel(lb, optionItems);
    })
});
const clickLabel = (lb, optionItems) => {
    if(lb.parentNode.classList.contains('active')) {
        lb.parentNode.classList.remove('active');
        optionItems.forEach((opt) => {
            opt.removeEventListener('click', () => {
                handleSelect(lb, opt)
            })
        })
    } else {
        lb.parentNode.classList.add('active');
        optionItems.forEach((opt) => {
            opt.addEventListener('click', () => {
                handleSelect(lb, opt)
            })
        })
    }
}
const handleSelect = (label, item) => {
    label.innerHTML = item.textContent;
    label.parentNode.classList.remove('active');
}


function winPopup() {
    var popUrl = "chatNew.jsp";
    var popOption = "top=150, left=600, width=400, height=700, status=no, menubar=no, toolbar=no, resizable=no";
    window.open(popUrl, "_blank" , popOption, true);
}

</script>
</html>