<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>돌봄 유형 선택하기</title>
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
        
        @media(max-width:480px){
        	p{
	font-size: 13px;}

    .main2{
     text-align: center;
    margin: 0 auto;
    position: absolute;
    width: 357px !important;
    height: 537px !important;
 
    }
    .child{
       width: 180px;
    height: 36px;
    margin: 24px auto;
    background-color: #ffd270;
    color: white;
    font-weight: bold;
    border-radius: 20px;
    line-height: 2.5;
    font-size: 14px;
    }
    .text{
        float: left;
        margin-left: 60px;
        font-weight: bold;
    }
    .p2{
        margin:0px;
        color:rgb(163, 163, 163);
        font-size: 13px;
        font-weight: lighter;
        font-family: GmarketSansLight;
    }

    .button{
        width: 300px;
    height: 49px;
    border-radius: 11px;
    background-color: #Ff7065;
    color: white;
    font-weight: bold;
    font-size: 20px;
    border: none;
    margin-top: 4px;
    margin-bottom: 120px;
    }
        .media1{    width: 357px !important;
    height: 69px !important;
    line-height: 5 !important;
    margin-top: -17px !important;
    font-size: 13px !important;}
        .media2{    width: 350px !important;
    height: 469px !important;
    margin-left: 4px !important;}
  
        .media4{width: 108px !important;
    margin: 14px auto !important;
    font-size: 10px !important;
    height: 25px !important;}
 
        .media6{    width: 28px !important;
   margin: 0 51px !important;}

        .media8{    font-size: 12px !important;}
        .media9{font-size: 10px !important;}
        .media10{width: 116px !important;
    font-size: 10px !important;
    height: 25px !important;
    margin-top: 0px !important;}
        .media11{width: 36px !important;
    margin: 0 46px !important;}

        .media13{    font-size: 12px !important;
    margin-left: 56px !important;}
        .media14{font-size: 10px !important;}

        .media16{    width: 116px !important;
    height: 24px !important;
    font-size: 10px !important;
    margin-top: -5px !important;
    margin-bottom: 10px !important;}
        .media17{    width: 31px !important;}
        .media18{font-size: 12px !important;}
        .media19{width: 200px !important;
    font-size: 13px !important;
    height: 30px !important;}
        .media20{font-size: 14px !important;
    margin-top: -10px !important;}
        .media21{font-size: 12px !important;
    margin-left: 24px !important;}
        .media22{font-size: 13px !important;
    margin-left: 36px !important;
        
        }
        .media23{font-size: 10px !important;
        
        }
        
        }
        
        /* ---------------------------------------------------------------------- */

	p{
	font-size: 13px;}

    .main2{
        text-align: center;
        margin: 0 auto;
        position: absolute;
        width:500px;
        height: 796px;
    }
    .child{
       width: 180px;
    height: 36px;
    margin: 24px auto;
    background-color: #ffd270;
    color: white;
    font-weight: bold;
    border-radius: 20px;
    line-height: 2.5;
    font-size: 14px;
    }
    .text{
        float: left;
        margin-left: 60px;
        font-weight: bold;
    }
    .p2{
        margin:0px;
        color:rgb(163, 163, 163);
        font-size: 13px;
        font-weight: lighter;
        font-family: GmarketSansLight;
    }

    .button{
        width: 300px;
    height: 49px;
    border-radius: 11px;
    background-color: #Ff7065;
    color: white;
    font-weight: bold;
    font-size: 20px;
    border: none;
    margin-top: 4px;
    margin-bottom: 120px;
    }

</style>
<body>
    <!-- 돌봄유형 모달창 main -->
    <div class="main2">
   
        <div style="background-color: #ffb61a9e;
     width: 466px;
    height: 98px;
    line-height: 5;
    text-align: center; margin: 0 auto;" class="media1">
        <h2 style="color:white">&nbsp;돌봄유형 선택</h2></div>
     <div style="text-align: center; margin: 0 23px; width: 452px;height: 683px;" class="media2">
        <br>
        <h3 style="margin: 1px; font-family: GmarketSansMedium;" class="media20">어떤 돌봄이 필요하세요?</h3>
        <p style="margin: 0; color: gray;" class="media21">돌봄 유형을 선택하시면, 맞춤 시터를 보여드려요</p>

        <div >
            <div class="child media4">
                2~10세 정기 돌봄
            </div>

            <div>
                <img src="images/등하원.png" style="width: 50px; margin: 0 70px;" class="media6">
                <img src="images/학습지도.png" style="width: 50px; margin: 0 70px;" class="media6">
            </div>
            <div style="margin: 0 auto; width: 500px; height: 45px; margin-left: -7px;" >
                <div class="text media8">
                   주 5일 등하원 
                    <p class="p2 media9">기관 전/후 등하원 및 돌봄</p>
                </div>
                <div class="text media21">
                    놀이/학습시터
                    <p class="p2 media9">주 1~4일 또는 짧은시간</p>
                </div>
            </div>
        </div>



        <div>
            <div class="child media10" style="margin-top:20px;">
                신생아/영아 정기돌봄
            </div>
            <div>
                <img src="images/풀타임.png" style="width: 55px; margin: 0 70px;" class="media11">
                <img src="images/보조.png" style="width: 55px; margin: 0 70px;" class="media11">
            </div>
            <div style="margin: 0 auto; width: 500px; height: 45px;     margin-left: 3px;" >
                <div class="text media13">
                  풀타임
                    <p class="p2 media14">주5일 평균8시간 이상</p>
                </div>
                <div class="text media22" style="margin-left: 74px;">
                    보조
                    <p class="p2 media14">주 1~4일 또는 짧은시간</p>
                </div>
            </div>
        </div>


        <div class="media15">
            <div class="child media16" style="margin-top:20px;">
                긴급/단기 돌봄
            </div>
            <div class="main">
                <img src="images/긴급.png" style="width: 50px;" class=" media17">

            </div>
            <div class="main media18" style="font-weight: bold;">
                긴급/단기
                <p class="p2 media23">하루 또는 며칠만 급하게 필요할 때</p>
              </div>
        </div>

            <button class="button media19">모든 돌봄유형 보기</button>
            
		</div>


    </div>
</body>
</html>