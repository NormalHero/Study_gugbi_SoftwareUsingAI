<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/map.css">
<script src="https://code.jquery.com/jquery-1.12.0.min.js"></script>
</head>
<body>

<!-- header -->
<%@ include file="/app/jsp/fix/header.jsp" %>


    <!-- 지도를 표시할 div 입니다 -->
    <div id="map_wrap"></div>
    <div id="map" style="width:1680px;height:1050px;"></div>

    <!-- 긴검색창 -->
        <div id="header" class="Header" role="banner">
            <div class="titleName"><h1>HelpPet Map</h1></div>
            <div class="search">
                <form id="search_keyword" onsubmit="" action="">
                    <input type="text" class="search_input" name="search_input" placeholder="잃어버린 장소, 품종"> 
                    <div class="btn_search_wrap">
                        <button class="btn_search"></button>
                    </div>
                </form>
            </div>
        </div>



    <!-- 한줄짜리 검색창 -->
    <!-- <div id="search_wrap">
        <div class="search_top">
            <div class="search_select">
                <div class="search_input_line">
                    <div class="input-wrap">
                        <input type="text" placeholder="잃어버린 장소, 품종 검색" autocomplete="off">
                    </div>
                    <div class="btn_search_wrap">
                        <div class="btn_search"></div>
                    </div>
                </div>
            </div>
        </div>
    </div> -->
    </div>


</body>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=fb388457eaef0a157c3ab94401d9c4a7"></script>
<script>
    var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
        mapOption = {
            center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
            level: 3 // 지도의 확대 레벨
        };

    // 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
    var map = new kakao.maps.Map(mapContainer, mapOption); 
</script>

</html>