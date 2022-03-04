<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
    @import url("fonts.googleapis.com/earlyaccess/notosanskr.css");
    
        body{
            margin: 0;
            padding: 0;
        }
        #psvSection {
            width: 1160px;
            height: auto;
            margin: 225px auto 0;
        }

        .detailConent{
            width: 100%;
            font-family: 'Noto Sans KR', sans-serif;
        }

        .detailTop {
            width: 100%;
           
        }
        .detailTop h1{
            font-size: 36px;
            text-align: center;
            color: #ffb300; 
        }
      
		 hr#psvHr {
		 	width:100%;
		    height: 2px;
		    background-color: #E2E2E2;
		    border: none;
		     margin-top: 12%
		    
        }
         
        

        .detailMain {
            width: 100%;
            height: auto;
           

        }
        .mainWrap{
            width: 100%;
            height: auto;

            margin-bottom: 10%;
            margin-top: 10%;
            
        }
        #noticeDetail b {
            width: 105px;
            display: inline-block;
        }
        #noticeDetail li{
            line-height: 31px;
        }
        #noticeDetail li::marker {
             color: #ffb300; 
            font-size: 0.8rem;
        }


        .datilImgContianer {
            width: 100%;
            height: 653px;
            position: relative;
            overflow: hidden;
            color: white;
         
        }
     
        .datilImgContianer .datilImg img  {
            width: 100%;
            height: 100%;
        }
        /* 이미지 배너를 위한 div */
        #dtimgWharp{
            width: 3480px;
     
            transition: transform 0.5s;
        }
        .datilImg{
            width: 1160px;
            height: 653px;
            float: left;
            background: black;
        }




        .subText{
            display: flex;
            align-items: center;
            gap: 15px;
            margin-bottom: 10px;
            float: left;
            margin-right: 11%;
        }
        .subText div{
            width: 115px;
            height: 40px;
            border-radius: 120px;
            border: 2px solid #ba8e66;
            color: #ba8e66;
            line-height: 38px;
            text-align: center;
            font-size: 17px;
            font-weight: 600;
           
            
        }
        .toSearchList{
            width: 200px;
            height: 60px;
            background-color: #ffb300; 
            color: white;
            margin:  50px auto  75px;
            display: block;
      
            border-radius: 30px;
            font-size: 18px;
            font-weight: 800;
            transition: .3s;
            border: none;
            }
            #dtImgTop{
                position: absolute;
                width: 100%;
 
                height: 18%;

                /* background:linear-gradient(rgba(20, 20, 20, 0.5)20% ); */
                background:linear-gradient(180deg, black   ,transparent);

            }


            .dtArrowWharp{
                height: 100%;
                /* border: 1px solid white; */
                width: 5%;
                position: absolute;
                opacity: 60%;
                top: 0;
                display: flex;
                align-items: center;
            }
            #dTRight{
                left: 0;
            }
            #dTLeft{
                right:  0;
            }

             #dta_right{
                left: 0;
               
            }
             #dta_left{
                right: 0;
               
            }
            .datilImg img{
                width: 100%;
                
                object-fit: scale-down;
                
                
            }
            #imgInNotifiNumber{
                position: absolute;
                right: 127px;
                 top: 16px;
                 color: #fff;
                 opacity: 0.8;
            }
            #dTstatusImg,#dTgenImgDiv {
                position: absolute;
                width: 48px;
                height: 48px;
            }
            #dTstatusImg{
                left: 5%;
            }
            #dTgenImgDiv{
                left: 9%
            }
            .infoText{
                position: absolute;
                width: 300px;
                height: 75px;
                background: white;
                border: 1px solid  #333;
                border-radius: 5%;
                padding: 12px;
                top: 70%;
                color: #333;
                line-height: 5px;
                
            }
            .infoText p{
                font-size: 14px;
                line-height: 15px;   
            }
            .infoTextProtect,.infoTextNotifi,.infoTextFinish{
                display: none;
            }

            .spanPos{
                background: rgba(135, 206, 235, 0.8);
            }
            .spanNag{
                background: rgba(255, 51, 153, 0.8);
            }
            .dtInfo{
                position: absolute;
                top: 50%;
                left: 5.5%;
                color: #fff;
            }
            #mapWrap,#notofiDate{
                font-size: 26px;
            }
            #notofiDate{
                display: flex;
                align-items: center
                
            }
            #notiFiWrap{
                margin-top: 50px;
                width: 100%;
                height: auto;
                
                
            }
            #notiFiDateWrap{
                display: flex;
                justify-content: space-around;
                margin-bottom: 13%;
                
            }
            .notiFiDate{
                font-size: 52px;
                background: blanchedalmond;
                width: auto;
                height: 70px;
            }
            #notofiDate div{
                width: 100%;
                height: 50%;
             border-top: 3px solid tomato;
             border-bottom: 3px solid tomato;
             
             display: flex;
             align-items: center;
             
           
             font-size: 64px;
            }

		.subTextWhrap{
		margin-bottom: 12%
		}
 
    </style>
</head>

<body>
   <!-- 헤더 영역 -->
  	<%@ include file="../fix/header.jsp" %>
  	
  	
    <!--content 시작-->

    <section id="psvSection">
        <div class="detailConent">
            <div class="detailTop">
                <h1>보호동물공고</h1>
            </div>
            <hr id="psvHr">
            <div class="detailMain">
                <div class="mainWrap">
                    <div class="datilImgContianer">
                        <div id="dtimgWharp">
                            <div class="datilImg">
                                <img src="https://cdn.discordapp.com/attachments/485361381575622676/949211335911157850/0E4A9590.jpg">
                            </div>
                            <div class="datilImg">
                                <img src="https://cdn.discordapp.com/attachments/485361381575622676/949222386438393906/0E4A955.jpg">
                            </div>
                            <div class="datilImg">
                                <img src="http://www.animal.go.kr/files/shelter/2022/01/202202111502734.jpg">
                            </div>
                        </div>
                        <div id="dtImgTop">
                            <div id="imgInNotifiNumber">
                            <b>공고번호</b> · <span>경기-용인-2022-00068</span>
                            </div>
                            <div id="dTstatusImg" class="">
                                <!-- 동물 상태에 따른 분기처리를 class를 부여하거나 js에서 해결(api사용하며해결)-->
                                <img src="https://cdn.discordapp.com/attachments/947836644889870356/949174463717580851/protect_close_icon.png">
                             </div>
                             <div id="dTgenImgDiv">
                                <img src="https://cdn.discordapp.com/attachments/947836644889870356/949157661667098655/femaleIcon.png">
                             </div>
                             <!-- 보호중인 동물 이벤트 div -->
                             <div class="infoTextProtect infoText">
                                    <h3><span class="spanPos">보호중인 동물</span></h3>
                                    <p><i>보호중인 동물로 현재 입양 가능한 상태입니다.</i></p>
                             </div>
                             <!-- 공고중인 동물 이벤트 div -->
                             <div class="infoTextNotifi infoText">
                                    <h3><span class="spanPos">공고중인 동물</span></h3>
                                    <p><i>공고중인 동물로 구조일로 부터 10일 이후에 입양 가능합니다.</i></p>
                             </div>
                             <div class="infoTextFinish infoText">
                                    <h3><span class="spanNag">보호종료</span></h3>
                                    <p><i>특정이유(반환, 안락사등)로 보호가 종료된 동물입니다.</i></p>
                             </div>
                             <div class="dtInfo">
                                 <p>[개] 믹스견 · 2022(년생) · 흰색 · 3.5(Kg)</p>
                             </div>
                        </div>
                        <div class="dtArrowWharp" id="dTRight">
                            <div class="deTailImgArrow" id="dta_right">
                                <img src="https://cdn.discordapp.com/attachments/947836644889870356/949275166301630494/arrow_LeftG_icon.png">
                            </div>
                        </div>
                        <div class="dtArrowWharp" id="dTLeft">
                            <div class="deTailImgArrow" id="dta_left">
                                <img src="https://cdn.discordapp.com/attachments/947836644889870356/949274812432396298/arrow_rightG_icon.png">
                            </div>
                        </div>
                    </div>
						<!-- 미리보기 창 구현 구간 -->
                </div>
                <div id="mapWrap">
                    <p><b>수지구 성복동 753 경남아너스빌 109동</b> 위치에서 발견되었습니다.</p>
                    <div id="map" style="width:100%;height:350px;"></div>
                </div>
                <div id="notiFiWrap">
             
                    <h1>주인을 찾아주세요!</h1>
                    <div id="notiFiDateWrap">
                        <div id="notofiDate">
                            <div class="js-clock"><span id="test2312"></span></div>
                           
                        </div>
                        
                        <div>
                            <img src='https://cdn.discordapp.com/attachments/485361381575622676/949318608192933938/notifiImg.png'>
                        </div>
                    </div>
                   
                </div>
                
                <div class="subTextWhrap">
	                <div class="subText">
	                    <div>중성화여부</div>
	                    <span>미상</span>
	                </div>
	                <div class="subText">
	                    <div>기타사항</div>
	                    <span>귀티나는 미소왕자,교통사고추정</span>
	                </div>
	                <div class="subText">
	                    <div>구조일</div>
	                    <span>2022-02-09</span>
	                </div>
                </div>
              
                  
                      
                      
                <br>

             
                <hr id="psvHr">
                
                 <button class="toSearchList" onclick="location.href='${pageContext.request.contextPath}/app/jsp/board/petSearchList.jsp';">목록으로</button>
                
            </div>

        </div>
        <!-- 댓글 구현 구간 -->
    </section>

    <!--content 종료-->

    <!--푸터영역-->
</body>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=e8c046fffe25962d6ea1d0fbd0d4d7cf"></script>
<script src="https://code.jquery.com/jquery-1.12.0.min.js"></script>
<script>
    var dTRight = document.getElementById('dTRight');
    var dTLeft = document.getElementById('dTLeft');
    const datilImgs = document.querySelectorAll('.datilImg');
    const dtimgWharp = document.querySelector('#dtimgWharp');
  
    
    var count = 0;


    //동물 상태에 따른 분기처리를 class를 부여하거나 js에서 해결(api사용하며해결)
    // if문으로 분기처리 가능
    $('#dTstatusImg').hover(function(){

        // $('.infoTextProtect').css('display','block');
        // $('.infoTextNotifi').css('display','block');
        $('.infoTextFinish').css('display','block');
    },function(){
        // $('.infoTextProtect').css('display','none');
        // $('.infoTextNotifi').css('display','none');
        $('.infoTextFinish').css('display','none');
       
    })


    dTRight.addEventListener('click',function(){
            

        if( count != 0){
                count--;
            }else{
                if(count == datilImgs.length - 1){
                    count = 0;
                }else{
                    count = datilImgs.length - 1;
                }
            }
            dtimgWharp.style.transform = "translate(-" + count * 1160 + "px)";
        
            
            // dtimgWharp.style.transform = "translate(-1160px)";
    })


    dTLeft.addEventListener('click',function(){
        if( count != datilImgs.length - 1){
                count++;
            }else{
                if(count == datilImgs.length - 1){
                    count = 0;
                }else{
                    count = datilImgs.length - 1;
                }
            }
            dtimgWharp.style.transform = "translate(-" + count * 1160 + "px)";
    })



    var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = { 
        center: new kakao.maps.LatLng(37.3140070, 127.062074), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };

    
var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

// 마커가 표시될 위치입니다 
var markerPosition  = new kakao.maps.LatLng(37.3140070, 127.062074); 

// 마커를 생성합니다
var marker = new kakao.maps.Marker({
    position: markerPosition
});

// 마커가 지도 위에 표시되도록 설정합니다
marker.setMap(map);

// 아래 코드는 지도 위의 마커를 제거하는 코드입니다
// marker.setMap(null);   

// 타이머  js
const timerContainer=document.querySelector(".js-clock"),
    timer=timerContainer.querySelector("span");

function getTime() {
    console.log('test');
    // 동물의 구조날자 +10일
  const xmasDay = new Date("2022-03-12:00:00:00+0900");
  const now=new Date();
  if(now>xmasDay){
    timer.innerText='공고기간 종료';
  }else{
  const gap=xmasDay-now;
  const day=Math.floor(gap/(1000*60*60*24)); //일
  const hours=Math.floor((gap/(1000*60*60))%24); //시
  const minutes=Math.floor((gap/(1000*60)%60)); //분
  const seconds=Math.floor((gap/1000)%60); //초
//   timer.innerHTML=`${day}  ${hours} ${minutes} ${seconds} `;
    var hoursChange = hours < 10 ? "0"+hours : hours;
    var minutesChange  = minutes < 10 ? "0"+minutes : minutes;
    var secondsChange  = seconds < 10 ? "0"+seconds : seconds;
    timer.innerHTML=day+"일 &nbsp;&nbsp<b>"+hoursChange+":"+minutesChange+":"+secondsChange+"</b>";


//   7일&nbsp;&nbsp<b>20:23:10</b>
  }
}

function init() {
    getTime();
    setInterval(getTime,1000);
}
init();



</script>

</html>