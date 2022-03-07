<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>입양 후기 게시판 상세</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/footer.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/header.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css">
</head>
<style>
@font-face {
    font-family: 'GangwonEdu_OTFBoldA';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2201-2@1.0/GangwonEdu_OTFBoldA.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}
    .content{
         width: 1250px;
         height: auto;
         margin: 0 auto;
         margin-top: 340px;
         padding-bottom: 110px;
         position: relative;
      }
    #petsBanner{
         position: relative;
         margin-top: -120px;
      }
      .petsText{
         position: absolute;
         font-size: 21px;
         left: 410px;
         top: 80px;
         font-family: 'GangwonEdu_OTFBoldA';
      }
      .petsImg{
      }
      .petsImg img{
         width: 100%;
      }
      #title>p:first-child{
        border-top: 1px solid gray;
        border-bottom: 1px solid gray;
        padding: 18px 9px;
        height: 23px;
      }
      .tableInfo{
          border-bottom: 1px solid gray;
		    height: 15px;
		    padding: 21px 10px;
      }
      .tableInfo p{ 
        float: left;
        margin-right: 120px;
        font-size: 12px;
        /* border-top: 1px solid gray;
        border-bottom: 1px solid gray; */
      }
      #imgContainer{
        margin-top: 100px;
      }
      .accent2 {
            padding: 0%;
            margin-top: 140px;
           	width: 100%;       
	}
    form {
		margin: 0 0 2em 0;
	}

		form.combined {
			display: -moz-flex;
			display: -webkit-flex;
			display: -ms-flex;
			display: flex;
			-moz-flex-direction: row;
			-webkit-flex-direction: row;
			-ms-flex-direction: row;
			flex-direction: row;
			margin-left: auto;
			margin-right: auto;
			max-width: 100%;
			position: relative;
			width: 35em;
		}

			form.combined input[type="text"],
			form.combined input[type="password"],
			form.combined input[type="email"],
			form.combined select,
			form.combined textarea {
				-moz-flex-grow: 1;
				-webkit-flex-grow: 1;
				-ms-flex-grow: 1;
				flex-grow: 1;
				-moz-flex-shrink: 1;
				-webkit-flex-shrink: 1;
				-ms-flex-shrink: 1;
				flex-shrink: 1;
				border-bottom-left-radius: 2.75em;
				border-bottom-right-radius: 0;
				border-top-left-radius: 2.75em;
				border-top-right-radius: 0;
			}

			form.combined input[type="submit"] {
				-moz-flex-grow: 0;
				-webkit-flex-grow: 0;
				-ms-flex-grow: 0;
				flex-grow: 0;
				-moz-flex-shrink: 0;
				-webkit-flex-shrink: 0;
				-ms-flex-shrink: 0;
				flex-shrink: 0;
				border-top-left-radius: 0;
				border-bottom-left-radius: 0;
			}
    input[type="button"]{
        width: 19%;
        background-color: #EEC0DB;
        color: white;
        font-size: 17px;
        font-weight: normal;
        margin-left: 5px;
        border: none;
        height: 143px;
        cursor: pointer;
        transition: 0.3s;
    }        
     input[type="button"]:hover{
     	opacity: 0.7;
     }
    body{
        margin: 0 auto;
    }
    .backToList{
        background-color: white;
      	width: 90px;
  	  	height: 50px;
    	border: 1px solid #e9dcdc;
    	cursor: pointer;
   	    margin-left: 1111px;
    }
    textarea {
			width: 100%;
			height: 120px;
			padding: 10px;
			border: 1px solid #e9dcdc;
			font-size: 16px;
		}    
	a img{
		opacity: 0.8;
	}
	.subject{
		vertical-align: baseline;
  	    background-color: #f5e6ee;
	    font-size: 24px;
	    color: #333;
	    font-weight: 400;
	    padding: 28px 16px;
	    border-bottom: #e0e0e1 1px solid;
	    border-radius: 5px;
	    margin-bottom: -40px;
	}
	.date{
		border-bottom: #e0e0e1 1px solid;
    	padding: 41px 18px;
   		margin-bottom: 41px;
    	max-width: 1250px;
	}
	.date li{
		float: left;
		display: inline-block;
		margin-right: 40px;
		font-size: 13px;
	    color: #888;
	    font-weight: 600;
	    font-size: 14px;
	}
</style>
<body>
   <%@ include file="/app/jsp/fix/header.jsp" %> 
 
   
    <section>
        <!--배너 사진-->
        <div class="content">
            <div id="petsBanner">
               <div class="petsText">
                   <h3>입양후기</h3>
                   <p>가족이 된 반려동물의 근황을 알려주세요</p>
               </div>
               <div class="petsImg">
                   <img src="https://vrthumb.imagetoday.co.kr/2021/11/04/twi001t3450585.jpg">
               </div>
           </div>
        
        <!--작성된 게시글-->   
        <!-- <div id="title">
            <p><b>밤순이 카페왔어용~</b></p>
            <div class="tableInfo">
                <p>작성자 : bamsoon1234</p><p>DATE : 2022.03.05</p><p>HIT : 76</p>
            </div>
        </div>
        <div id="imgContainer">
            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS9Jd9_hPQz28nsMLeZiWsLPJdf_wogGhYMgQ&usqp=CAU">
        </div>
        <p><pre>밤순이 카페왔어용!!
        밤순이 배고팡!</pre></p> -->
       	<div class="write">
       		<h4 class="subject">입양후기입니당</h4>
       		<ul class="date">
       			<li style="margin-right: 765px;">작성자 : bamsoon1234</li>
       			<li>DATE : 2022.5.16</li>
       			<li>HIT : 15</li>
       		</ul>
       		<div>
       			<img src="http://hibyeshelter.com/file_data/realshelter01/2020/12/06/09ee5ca2b11ef0d954fca1d339a2a574.jpg" style="width: 300px;">
       			<br>
       			<br>
       			<div>
       				<p><pre>입양후기입니다!!!</pre></p>
       			</div>
       		</div>
       	</div>
        
        <!-- 댓글 -->
        <section class="main accent2">
            <header class="major" style="text-align:left;">
               <h2>댓글</h2>
               
            </header>
            <form method="post" action="#" class="combined" style="width:auto;">
               <textarea name="content" id="content" placeholder="여러분의 따뜻한 댓글을 남겨주세요." class="invert" rows="5" style="border-radius:0; resize:none;"></textarea>
               <input id="register" type="button" class="primary" value="댓글등록" onclick=""/>
            </form>
            <form action="#" id="replies" class="combined" style="flex-direction:column; margin:0; display:contents;">
            </form>
         </section>
         <button class="backToList">목록</button>
    </section>
    
   
</body>
    <!-- footer Include -->
 <%@ include file="/app/jsp/fix/footer.jsp" %>
        <script src="https://code.jquery.com/jquery-1.12.0.min.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/header.js" ></script> 
</html>