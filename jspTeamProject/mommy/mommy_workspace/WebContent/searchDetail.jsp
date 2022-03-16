<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>     
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>상세검색</title>
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
        
        @media(max-width:450px){
        .media1{    width: 359px !important;
    height: 70px !important;}
        .media2{margin-left: 9px !important;
    line-height: 4.3;}
   
        .media4{    width: 350px !important; margin-top: -43px !important;}
        .media5{font-size: 14px !important;
    margin-bottom: -18px !important;}
        .media6{    width: 33px !important;
    margin-left: -2px !important;    margin-bottom: -10px !important;}
        .media7{    display: inline-block;
    font-size: 11px !important;
    margin-left: 16px !important;
    margin-right: 23px !important;
}
        .media8{}
        .media9{  font-size: 14px !important;
    margin-left: -7px !important;
    margin-bottom: -16px !important;}
        .media10{margin-left: -41px !important;}

        .media13{    font-size: 14px !important;
    margin-left: -7px !important;}

        .media18{    font-size: 14px !important;
    margin-left: -7px !important;}
  
        .media21{    font-size: 14px !important;
    margin-left: -7px !important;}

        .media24{margin-left: 17px !important;
    margin-right: 14px !important;}

        
        
        


  .apply{
position: absolute;
    width: 56px !important;
    height: 27px !important;
    font-size: 12px !important;
    margin: -34px 45px !important;

  }
  hr{
    width: 550px;
    color:#f6f6f6;
      
  }


 .content{
   width: 400px;
    margin: 0 auto;
    margin-left: 28px !important;
 }
.gradeImgSize{
 width: 39px; margin-top: 20px;
}
 .grade{
   margin: 0 24px;
    cursor: pointer;
   
 }
.grade2{
   margin: 0px 17px;
    
    
}

.time{
margin: 0 13px !important;
    font-size: 10px !important;
    margin-left: 0px !important;
    margin-right: 38px !important;
}
.timeIcon{
    width: 51px !important;
    margin-left: 8px !important;
    margin-right: 27px !important;
    margin-bottom: -10px !important;
    margin-top: -1px !important;
}
.age{
 margin: 0px 16px !important;
    width: 37px !important;
}

.activity{
     margin: 0 13px !important;
}

.days2{
    width: 30px !important;
    margin: 6px !important;
} 
        
        
        }
        /*-----------------------------------------------------------------------------------------  */

	h3{
		margin:0px;
		font-family: GmarketSansMedium;
		color:#93999A;
		margin-left: -12px;
	}
    .main{
        text-align: center;
        margin: 0 auto;
        width:550px;
        height: 780px;
    }
  .header{
      width: 500px;
      height: 100px;
      text-align: center;
      margin: 0 auto;
      position: relative;
     margin-bottom: 4px;
     /* background-color: pink; */
  }

  .apply{
     position: absolute;
    background-color: white;
    color: #ffb61a;
    font-weight: bold;
    width: 80px;
    height: 40px;
    border: none;
    border-radius: 15px;
    font-size: 17px;
    margin: -46px 162px;

  }
  hr{
    width: 550px;
    color:#f6f6f6;
      
  }


 .content{
   width: 400px;
    margin: 0 auto;
    
 }
.gradeImgSize{
 width: 39px; margin-top: 20px;
}
 .grade{
   margin: 0 24px;
    cursor: pointer;
   
 }
.grade2{
   margin: 0px 17px;
    
    
}

.time{
   margin: 0 15px;
 font-size: 12px;
 margin-top: 20px;
}
.timeIcon{
   margin: 0px 14px;
    cursor: pointer;
    width: 70px;
    margin-top: 16px;
}
.age{
   margin: 0px 10px;
    width: 50px;
    cursor: pointer;
    margin-top:10px;
}

.activity{
 width: 41px;
    margin: 0 14px;
    cursor: pointer;
        margin-top: 10px;
}

.days2{
width: 40px;
    margin: 4px;
cursor: pointer;
margin-top:9px;
}




</style>
<body>
    <!-- main -->
<div class="main">
        <div class="header">
        <div	style="
        background-color: #ffb61a9e;
	    width: 550px;
	    height: 98px;
	    line-height: 5;   "
        class="media1"
        ><h3 style="color:white; margin-left: -30px; font-size:23px; " class="media2">상세 검색</h3></div>
       
        <input type="button" value="적용" class="apply" style="cursor: pointer;" class="media3">
        </div>
  
         
        <div class="content media4">
        
            <h3 style="text-align: left; margin-top: 15px;" class="media5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;아이 나이</h3>
            
            <span class="grade"><img src="images/신생아no.png" class="gradeImgSize media6"  id="newbornBaby"></span>
            <span class="grade"><img src="images/영아no.png"  class="gradeImgSize media6"  id="baby"></span>
            <span class="grade"><img src="images/유치원no.png" class="gradeImgSize media6"  id="kinder"></span>
            <span class="grade"><img src="images/초등학생no.png" class="gradeImgSize media6"   id="elementary"></span>
            <br>
            <span class="grade2  media7">&nbsp;&nbsp;신생아</span>
            <span class="grade2 media7">&nbsp;&nbsp;&nbsp;영아</span>
            <span class="grade2 media7">&nbsp;&nbsp;&nbsp;&nbsp;유치원</span>
            <span class="grade2 media7">초등학생</span>
        </div>
        
        <hr>
        <div class="content media8">
            <h3 style="text-align: left;" class="media9">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;돌봄 요일</h3>
            <div style="padding:15px; margin-bottom: -15px;" class="media10">
                <img src="images/월.png"  class="days2 media11" 
                 id="monday">
                <img src="images/화.png" class="days2 media11" 
                 id="tuesday" >
                <img src="images/수.png" class="days2 media11" 
                id="wednesday">
                <img src="images/목.png" class="days2 media11" 
                id="thursday">
                <img src="images/금.png" class="days2 media11" 
                id="friday">
                <img src="images/토.png" class="days2 media11"  
                id="saturday">
                <img src="images/일.png" class="days2 media11"  
                id="sunday">
            </div>
        </div>
        
        <hr>

        <div class="content media12">
            <h3 style="text-align: left;" class="media13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;돌봄 시간대</h3>
       
            <span class="timeIcon"><img src="images/아침1.png"  class="timeIcon media14" 
                id="morning"></span>
            <span class="timeIcon"><img src="images/오후1.png" class="timeIcon media14"
                id="lunch"></span>
            <span class="timeIcon"><img src="images/저녁1.png" class="timeIcon media14"
               id="dinner"></span>
                <div style="margin-bottom: 13px;" class="media16">
				<span class="time media15">오전9시~오후12시</span>
				<span class="time media15">오후12시~오후3시</span>
				<span class="time media15">오후3시~오후6시</span>
				</div>												
        </div>
       
        <hr>

        <div class="content media17">
            <h3 style="text-align: left;" class="media18">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;원하는 시터 나이대</h3>
            
            <div class="time">
                <img src="images/20대1.jpg"  class="age media19"
                id="twenty"> 
                <img src="images/30대1.jpg" class="age media19"
                id="thirty"> 
                <img src="images/40대1.jpg" class="age media19"
                id="fourty"> 
                <img src="images/50대1.jpg" class="age media19"
                id="fifty">
                <img src="images/60대1.jpg"  class="age media19"
                id="sixty">
                
            </div>
        </div>
        
        <hr>

        <div class="content media20">
            <h3 style="text-align: left;" class="media21">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;원하는 활동</h3>
            
            <div class="time media22" style="margin-top: 15px height: 175px; ">
                <div >
                <img src="images/no실내놀이.png" class="activity media23"
                id="play">
                <img src="images/no등하원.png" class="activity media23"
                id="goingSchool" >
                <img src="images/no밥챙겨주기.png"class="activity media23"
                id="makeEat">
                <img src="images/no청소.png" class="activity media23" 
                id="cleaning">
                <img src="images/no학습지도.png" class="activity media23"
                id="study">
                <div class="media25">
                    <span style="margin:17.3px;" class="media24">실내놀이</span>
                    <span style="margin: 2px;"class="media24">등하원</span>
                    <span style="margin: 15px;"class="media24">밥 챙겨주기</span>
                    <span style="margin: 15px;"class="media24">청소</span>
                    <span style="margin: 15px;"class="media24">학습 지도</span>

                </div>
                </div>
            </div>
        </div>




</div>
</body>
<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/jquery.scrolly.min.js"></script>
<script src="assets/js/browser.min.js"></script>
<script src="assets/js/breakpoints.min.js"></script>
<script src="assets/js/util.js"></script>
<script src="assets/js/main.js"></script>
<script>
    const $newbornBaby = $("img#newbornBaby");
    const $baby = $("img#baby");
    const $kinder = $("img#kinder");
    const $elementary =$("img#elementary");
    const $monday = $("img#monday");
    const $tuesday = $("img#tuesday ");
    const $wednesday = $("img#wednesday");
    const $thursday = $("img#thursday");
    const $friday = $("img#friday");
    const $saturday = $("img#saturday");
    const $sunday = $("img#sunday");
    const $morning = $("img#morning");
    const $lunch = $("img#lunch");
    const $dinner = $("img#dinner");
    const $twenty= $("img#twenty");
    const $thirty= $("img#thirty");
    const $fourty= $("img#fourty");
    const $fifty= $("img#fifty");
    const $sixty= $("img#sixty");
    const $play = $("img#play ");
    const $goingSchool = $("img#goingSchool");
    const $makeEat = $("img#makeEat");
    const $cleaning = $("img#cleaning");
    const $study = $("img#study");
    

    

    

    $newbornBaby.on("click",function(){
        if($newbornBaby.attr('src')=='images/신생아.png'){
            $newbornBaby.attr('src','images/신생아no.png');
			}else{$newbornBaby.attr('src','images/신생아.png');}
    })

    $baby.on("click",function(){
        if($baby.attr('src')=='images/영아.png'){
            $baby.attr('src','images/영아no.png');
			}else{$baby.attr('src','images/영아.png');}
    })
   
    $kinder.on("click",function(){
        if($kinder.attr('src')=='images/유치원.png'){
            $kinder.attr('src','images/유치원no.png');
			}else{$kinder.attr('src','images/유치원.png');}
    })
    $elementary.on("click",function(){
        if($elementary.attr('src')=='images/초등학생.png'){
            $elementary.attr('src','images/초등학생no.png');
			}else{$elementary.attr('src','images/초등학생.png');}
    })
    $monday.on("click",function(){
        if($monday.attr('src')=='images/월.png'){
            $monday.attr('src','images/월1.png');
			}else{$monday.attr('src','images/월.png');}
    })
    $tuesday.on("click",function(){
        if($tuesday.attr('src')=='images/화.png'){
            $tuesday.attr('src','images/화1.png');
			}else{$tuesday.attr('src','images/화.png');}
    })
    $wednesday.on("click",function(){
        if($wednesday.attr('src')=='images/수.png'){
            $wednesday.attr('src','images/수1.png');
			}else{$wednesday.attr('src','images/수.png');}
    })
    $thursday.on("click",function(){
        if($thursday.attr('src')=='images/목.png'){
            $thursday.attr('src','images/목1.png');
			}else{$thursday.attr('src','images/목.png');}
    })
    $friday.on("click",function(){
        if($friday.attr('src')=='images/금.png'){
            $friday.attr('src','images/금1.png');
			}else{$friday.attr('src','images/금.png');}
    })
    $saturday.on("click",function(){
        if($saturday.attr('src')=='images/토.png'){
            $saturday.attr('src','images/토1.png');
			}else{$saturday.attr('src','images/토.png');}
    })
    $sunday.on("click",function(){
        if($sunday.attr('src')=='images/일.png'){
            $sunday.attr('src','images/일1.png');
			}else{$sunday.attr('src','images/일.png');}
    })
    $morning.on("click",function(){
        if($morning.attr('src')=='images/아침.png'){
            $morning.attr('src','images/아침1.png');
			}else{$morning.attr('src','images/아침.png');}
    })
    $lunch.on("click",function(){
        if($lunch.attr('src')=='images/오후.png'){
            $lunch.attr('src','images/오후1.png');
			}else{$lunch.attr('src','images/오후.png');}
    })
    $dinner.on("click",function(){
        if($dinner.attr('src')=='images/저녁.png'){
            $dinner.attr('src','images/저녁1.png');
			}else{$dinner.attr('src','images/저녁.png');}
    })
    $twenty.on("click",function(){
        if($twenty.attr('src')=='images/20대.jpg'){
            $twenty.attr('src','images/20대1.jpg');
			}else{$twenty.attr('src','images/20대.jpg');}
    })
    $thirty.on("click",function(){
        if($thirty.attr('src')=='images/30대.jpg'){
            $thirty.attr('src','images/30대1.jpg');
			}else{$thirty.attr('src','images/30대.jpg');}
    })
    $fourty.on("click",function(){
        if($fourty.attr('src')=='images/40대.jpg'){
            $fourty.attr('src','images/40대1.jpg');
			}else{$fourty.attr('src','images/40대.jpg');}
    })
    $fifty.on("click",function(){
        if($fifty.attr('src')=='images/50대.jpg'){
            $fifty.attr('src','images/50대1.jpg');
			}else{$fifty.attr('src','images/50대.jpg');}
    })
    $sixty.on("click",function(){
        if($sixty.attr('src')=='images/60대.jpg'){
            $sixty.attr('src','images/60대1.jpg');
			}else{$sixty.attr('src','images/60대.jpg');}
    })
    $play.on("click",function(){
        if($play.attr('src')=='images/실내놀이.png'){
            $play.attr('src','images/no실내놀이.png');
			}else{$play.attr('src','images/실내놀이.png');}
    })
    $goingSchool.on("click",function(){
        if($goingSchool.attr('src')=='images/등하원.png'){
            $goingSchool.attr('src','images/no등하원.png');
			}else{$goingSchool.attr('src','images/등하원.png');}
    })
    $makeEat.on("click",function(){
        if($makeEat.attr('src')=='images/밥챙겨주기.png'){
            $makeEat.attr('src','images/no밥챙겨주기.png');
			}else{$makeEat.attr('src','images/밥챙겨주기.png');}
    })
    $cleaning.on("click",function(){
        if($cleaning.attr('src')=='images/청소.png'){
            $cleaning.attr('src','images/no청소.png');
			}else{$cleaning.attr('src','images/청소.png');}
    })
    $study.on("click",function(){
        if($study.attr('src')=='images/학습지도.png'){
            $study.attr('src','images/no학습지도.png');
			}else{$study.attr('src','images/학습지도.png');}
    })
   
   


</script>


</html>