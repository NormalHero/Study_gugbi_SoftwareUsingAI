<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
      <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />
            <link rel="preconnect" href="${pageContext.request.contextPath}/https://fonts.googleapis.com">
      <link rel="preconnect" href="${pageContext.request.contextPath}/https://fonts.gstatic.com" >
      <link href="${pageContext.request.contextPath}/https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/assets/css/lookSitterProfile2.css" rel="stylesheet" type="text/css">
    <title>시터 프로필 상세보기</title>

</head>

<body>
    <!-- Aside -->
   <div class="wrapper">
	<div class="inner">
        <jsp:include page="../fix/aside222.jsp" flush="true"/>
            </div>
	</div>


 <!-- Header -->
  <jsp:include page="../fix/header.jsp" flush="true"/>
  
  
  
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
              <button class = "buttonAside" id = "chatbutton" style="background-color:#ff7065 !important;">채팅 신청하기</button></a>
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
                <a href = "${pageContext.request.contextPath}/app/serviceSearch/searchMom.jsp;"><button class = "buttonAside">시터 찾기</button></a>
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
                    <img src="${pageContext.request.contextPath}/images/img1.jpg" style="width: 100px; border-radius: 150px; cursor: pointer; ">
                    </label>
                    <div style = "position:absolute; top: 20px; left: 136px;">
                     <h3 style="margin-bottom: 3px; font-size: 18px;">김아무개
                          <img src="${pageContext.request.contextPath}/images/heart.png" class="heart" id="heart"></h3><span style = "margin-top: 20px; font-size:16px;">29세, 여</span>
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
                            <li class="liCss" id="li1"> <img src="${pageContext.request.contextPath}/images/인증완료.png" class="imgIcon">
                            <a  class="a" onMouseOver="this.innerHTML='코로나인증, 등초본인증'" onMouseOut="this.innerHTML='인증완료 여부'"> 인증완료 여부</a> </li>
                            
                            <br><li class="liCss" id="li2"><img src="${pageContext.request.contextPath}/images/활동아이콘.png" class="imgIcon">
                            <a class="a" onMouseOver="this.innerHTML='실내놀이, 등하원'" onMouseOut="this.innerHTML='가능한 활동'">가능한 활동</a> </li>
                            
                            <br><li class="liCss" id="li3"><img src="${pageContext.request.contextPath}/images/돌봄가능연령아이콘.png" class="imgIcon">
                              <a class="a" onMouseOver="this.innerHTML='유아, 초등학생'" onMouseOut="this.innerHTML='돌봄가능 연령'">돌봄가능 연령</a></li>
                            
                            <br><li class="liCss" id="li4"><img src="${pageContext.request.contextPath}/images/돌봄가능기간.png" class="imgIcon">
                              <a class="a" onMouseOver="this.innerHTML='시작날짜[2022-03-07] / 3개월 이상'" onMouseOut="this.innerHTML='활동가능 기간'">활동가능 기간</a></li>
                            
                            <br><li class="liCss" id="li5"><img src="${pageContext.request.contextPath}/images/활동가능시간.png" class="imgIcon">
                              <a class="a" onMouseOver="this.innerHTML='오후3시~오후6시'" onMouseOut="this.innerHTML='활동가능 시간'">활동가능 시간</a></li>
                           

                        </ul>
                       

                        
                    </div>
                    <div class = "innerContent moAd1" style="float: left;  margin-left: 32%;">
                        <p class ="innerTitle" style="margin: 0;"><img src="${pageContext.request.contextPath}/images/지역.png" style="width: 25px; margin-right: 10px; ">활동가능 지역</p>
                        <p style="margin:0px; font-size: 14px;">(경기도 용인시 수지구 상현동)</p>
                        <div >

                        <div id="map" style="width:350px;height:220px;"class="map" ></div>
                  



                        </div>
                    </div>


                     
        
                                        
            <hr class="split" >
                <div class = "innerContent" style = "position:relative;">
                    <p class ="innerTitle" >희망 시급</p>   
                    
                    <div style="display: inline-block; width: 50px; "><img src="${pageContext.request.contextPath}/images/money.png" style="width: 100%;"></div>
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
                            <img src="${pageContext.request.contextPath}/images/star.png" width="17px" >
                            <img src="${pageContext.request.contextPath}/images/star.png" width="17px" >
                            <img src="${pageContext.request.contextPath}/images/star.png" width="17px" >
                            <img src="${pageContext.request.contextPath}/images/star.png" width="17px" >
                            <img src="${pageContext.request.contextPath}/images/star.png" width="17px" >
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
                            <div style="width: 70px;"><img src="${pageContext.request.contextPath}/images/후기1.png" style="width: 100%; "></div>
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
                            <div style="width: 70px;"><img src="${pageContext.request.contextPath}/images/후기2.png" style="width: 100%; "></div>
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
                            <div style="width: 70px;"><img src="${pageContext.request.contextPath}/images/후기3.png" style="width: 100%; "></div>
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
                            <div style="width: 70px;"><img src="${pageContext.request.contextPath}/images/후기2.png" style="width: 100%; "></div>
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
                            <div style="width: 70px;"><img src="${pageContext.request.contextPath}/images/후기1.png" style="width: 100%; "></div>
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
                    <img src="${pageContext.request.contextPath}/images/v3.png" style="width: 35px;">
                  </div>

                  </div>
                  </div>






<!-- footer -->
        <jsp:include page="../fix/footer.jsp" flush="true"/>
               
         
      
</body>

<script>var contextPath = "${pageContext.request.contextPath }";</script>
         <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
   		<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
         <script src="${pageContext.request.contextPath}/assets/js/jquery.scrolly.min.js"></script>
         <script src="${pageContext.request.contextPath}/assets/js/browser.min.js"></script>
         <script src="${pageContext.request.contextPath}/assets/js/breakpoints.min.js"></script>
         <script src="${pageContext.request.contextPath}/assets/js/util.js"></script>
         <script src="${pageContext.request.contextPath}/assets/js/main.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/additional.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/lookSitterProfile2.js"></script>
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

</script>
</html>