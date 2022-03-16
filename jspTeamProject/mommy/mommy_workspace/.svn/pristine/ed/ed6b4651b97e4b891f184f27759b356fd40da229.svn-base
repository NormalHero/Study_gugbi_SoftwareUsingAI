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
      <link rel="preconnect" href="https://fonts.googleapis.com">
      <link rel="preconnect" href="https://fonts.gstatic.com" >
      <link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
    <title>부모가 올린글 상세보기</title>
<style>


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
        

        
.heart{
width: 25px;
    margin-left: 6px;
    position: absolute;
    top: 2px;
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
a{
  border: none;
  color:#93999A;
}
.pay{
    display: inline-block;
  display: inline-block;
    position: relative;
    top: -12px;
    left: 7px;
    margin-bottom: -25px;                  
}


.mobileEntBut{
	display: none;
}


aside.aside2{
    position: fixed;
    left: 64%;
    top: 13%;
}

.outer {
    width: 280px;
    height: 300px;
    margin: 0 auto;
    overflow-x: hidden;
    border: solid 1px #e2eaec;
    padding-top: 25px;
}

.inner2-list {
  display: flex;
  transition: .3s ease-out;
  height: 100%;
}

.inner2 {
 
  padding: 0 16px;
  
}
aside.aside2{
    position: fixed;
    left: 67% !important;
    top: 14% !important;
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
            margin-top: 7px;
            cursor: pointer;
        }



        .buttonAside:hover,
      .buttonAside:active {
         box-shadow: inset 0 0 0 1px #ffb61a;
         color: white !important;
        }
        
   

@media (max-width: 576px){
#header{width: 74%;}
.mobileWant{
    width: 132%;
}



#main{
    padding: 3em 0 1em 0;
       width: 85% !important;
    margin-top: -21px !important;

}

aside.aside2{
display: none;
}

.mobileP{
padding-bottom: 10px !important;
}

.mobileMoney{
    display: inline-block !important;
    margin-top: 97%;
    position: absolute;
    margin-left: -65%;
    width: 100px;
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
          margin-left: -21px !important;
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
a{
  border: none;
  color:#93999A;
  cursor: pointer;
}
.pay{
    display: inline-block;
  display: inline-block;
    position: relative;
    top: -12px;
    left: 7px;
    margin-bottom: -25px;                  
}

aside.aside2{
    position: fixed;
    left: 64%;
    top: 13%;
}

.outer {
    width: 280px;
    height: 300px;
    margin: 0 auto;
    overflow-x: hidden;
    border: solid 1px #e2eaec;
    padding-top: 25px;
}

.inner2-list {
  display: flex;
  transition: .3s ease-out;
  height: 100%;
}

.inner2 {
 
  padding: 0 16px;
  
}
aside.aside2{
    position: fixed;
    left: 67% !important;
    top: 14% !important;
}


.add{
    margin-top: 73px;
    margin-left: -6px !important;
   width: 335px !important;
    overflow: hidden;
}

.won{
    display: none;
}
        
.mobileEntBut{
	    display: inline-block;
    position: absolute;
    left: 63%;
    width: 116px;
    top: 22px;
}

.mobileDiv{
width: 113% !important;
margin-left: 5px !important;
}


.media_correct{
 
 margin-left: 60px;
}


.buttonAside{
width: 70%;
    margin-left: 8px;
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
         
         
            <!-- aside -->
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
                <h5 style = "font-weight:500">일자리 찾기 바로가기</h5>
                <p style = "font-size:16px;">다른 부모님이 올린 공고를 확인해보세요! 어디서 일을 구해야할 지 모르겠다면, 부모님들과 손쉽게 만날 수 있는 마미랑을 이용해보세요.</p>
                <a href = "searchJob.jsp;"><button class = "buttonAside">일자리 찾기</button></a>
            </div>
        </div>
  
    </aside>
         
         
      <!-- Main -->

         

     



      <div id="main" class="container medium" style="margin-top: -100px;">
         <!-- profile header -->
        <p style="font-size: 15px; width: 57%; margin-top: -46px; display: inline-block;">작성시간[2022-03-07]</p>
              <div style="display:inline; position: relative;" class="media_correct">
	                  <a class="a" style="font-size:17px; cursor: pointer;">수정</a> &nbsp;&nbsp;&nbsp;
	                  
	                	<a class="a" style="font-size:17px; cursor: pointer;">삭제</a>  
	                  </div>
         <br>
            <div style = "width: 70%; background: white; position:relative; display: inline-block;" class="mobileDiv">
                <div style="text-align: left; display:inline-block; margin-left:15px;">
                    <label><input type="file" style="display:none;">
                    <img src="images/후기1.png" style="width: 100px; border-radius: 150px; cursor: pointer; ">
                    </label>
                    <div style = "position:absolute; top: 20px; left: 136px;">
                          <h3 style="margin-bottom: 3px; font-size: 18px;">김아무개
                          <img src="images/heart.png" class="heart" id="heart"></h3>
                          <span style = "margin-top: 20px; font-size:16px;">29세, 여</span>
                     </div>
                  
                </div>
                
                
                <div class="mobileEntBut">  
                <a href = "#"><button class = "buttonAside" style="background-color:#ff7065 !important; ">지원하기</button></a>
                </div>
                <hr class="split">
              		 	<div style="display: flex; margin-top: 23px; margin-bottom: 10px;" > 
		              		 	<p class="innerTitle" style="width:100px; margin:0px ;">희망시급</p>
		                        <div style="display: inline-block; width: 28px; margin-left: 33px;">
		                            <img src="images/money.png" style="width: 100%;">
		                        </div>
		                        <div style="display:inline-block;"><span style="font-size:20px;">10,000원</span></div>
                     </div>   
                <hr class="split">

                <div class = "innerContent mobileWant">
                <p class ="innerTitle" >⭐이런 사람을 원해요</p>
                
                <div style = "float:left; margin-right:30px; margin-top: 20px;">
                    <p style="margin: 0;  font-size: 15px; color:#797d7e;
                       
                    ">정기적으로 일해주실 분만 구합니다.</p>
                   
                </div>


                </div>

				<div class="mobileMoney" style="display: none;">
				<p class ="innerTitle mobileP" style="margin:0px;">희망 시급</p>
				<span>10,000원</span>
				</div>



                <hr class = "split">
                    <div class = "innerContent2" style="float: left;">
                        <p class ="innerTitle" style="margin-bottom: 29px;">기본정보</p>

                        <ul style="list-style: none; margin-left: -28px; width: 423px; margin-bottom: 0; ">
                            <li class="liCss" id="li1"> <img src="images/시터 나이.png" class="imgIcon">
                            <a onMouseOver="this.innerHTML='20대~40대'" onMouseOut="this.innerHTML='원하는 시터나이'"> 원하는 시터나이</a> </li>
                            
                            <br><li class="liCss" id="li2"><img src="images/활동아이콘.png" class="imgIcon">
                            <a onMouseOver="this.innerHTML='실내놀이, 등하원, 밥해주기'" onMouseOut="this.innerHTML='원하는 활동'">원하는 활동</a> </li>
                            
                            <br><li class="liCss" id="li3"><img src="images/돌봄가능연령아이콘.png" class="imgIcon">
                              <a onMouseOver="this.innerHTML='초등학생'" onMouseOut="this.innerHTML='아이 정보'">아이 정보</a></li>
                            
                            <br><li class="liCss" id="li4"><img src="images/돌봄가능기간.png" class="imgIcon">
                              <a onMouseOver="this.innerHTML='시작날짜[2022-03-07] / 3개월 이상'" onMouseOut="this.innerHTML='원하는 돌봄 기간'">원하는 돌봄 기간</a></li>
                            
                            <br><li class="liCss" id="li5"><img src="images/활동가능시간.png" class="imgIcon">
                              <a onMouseOver="this.innerHTML='오후3시~오후6시'" onMouseOut="this.innerHTML='원하는 돌봄 시간'">원하는 돌봄 시간</a></li>
                           

                        </ul>
                       

                        
                    </div>
                    <div class = "innerContent add" style="float: left;  margin-left: 32%;">
                        <p class ="innerTitle" style="margin: 0;"><img src="images/지역.png" style="width: 25px; margin-right: 10px; ">활동가능 지역</p>
                        <p style="margin:0px; font-size: 14px;">(경기도 용인시 수지구 상현동)</p>
                        <div >

								<div id="map" style="width:350px;height:220px;"class="map" ></div>
						

 

                        </div>
                    </div>


                     
        
                                        
            <hr class="split" >
               
           
                <div class = "innerContent" style = "position:relative;">
                   






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


const $heart = $('#heart');

$heart.on("click", function(){

	if($heart.attr("src")=='images/heart.png'){

		$heart.attr("src", "images/emptyHeart.png");
	}else{

		$heart.attr("src", "images/heart.png");
	}

	
});



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


function winPopup() {
    var popUrl = "chatNew.jsp";
    var popOption = "top=150, left=600, width=400, height=700, status=no, menubar=no, toolbar=no, resizable=no";
    window.open(popUrl, "_blank" , popOption, true);
}





</script>



</script>
</html>