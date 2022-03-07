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
	@font-face {
    font-family: 'GmarketSansMedium';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/GmarketSansMedium.woff') format('woff');
    font-weight: normal;
    font-style: normal;
	}
	
	html, body {
    display: block;
    width: 100%;
    height: 100%;
    margin: 0;
      padding: 0;
    
}
    

/*         #psvContentWrap {
            width: 1160px;
            height: auto;
            margin: 225px auto 0;
        } */

        .detailConent{
            width: 100%;
            font-family: 'Noto Sans KR', sans-serif;
        }

        .detailTop {
            width: 100%;
            margin-bottom: 10%;
           
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
		    margin-top: 1%;
		    
        }
         
        

        .detailMain {
            width: 100%;
            height: auto;
           

        }
        .scrollSection{
            width: 100%;
   			height: 100%;
    		position: relative;

            
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
           /*  background: rgba(255,255,255,0); */
            background: white;
        }




        .subText{
            display: flex;
            align-items: center;
            gap: 15px;
            margin-bottom: 10px;
            float: left;
            margin-right: 8%;
        }
        .subText div{
            width: 115px;
            height: 40px;
            border-radius: 120px;
            border: 2px solid #82CBC4;
            color: #ffb300;
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
		
               /*  background:linear-gradient(180deg, black   ,transparent); */
                background:linear-gradient(180deg, white,transparent);

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
                color: black;
    			font-size: 55px;
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
                 color: black;
                 opacity: 0.8;
            }
            #dTstatusImg,#dTgenImgDiv {
                position: absolute;
                width: 48px;
                height: 48px;
            }
            #dTstatusImg{
                left: 121px;
   				 top: 3px;
            }
            #dTgenImgDiv{
                left: 173px;
    			top: 3px;
}
            
            .infoText{
                position: absolute;
                width: 300px;
                height: 75px;
                background: white;
                border: 1px solid  #333;
                border-radius: 5%;
                padding: 12px;
                top: 53px;
                color: #333;
                line-height: 5px;
                z-index: 999;
                
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
                top: 33%;
                left: 127px;
                color: black;
            }
/*             #mapWrap{
                margin-top: 25%;
            } */
            #mapWrap,#notofiDate{
                font-size: 26px;
            }
            #mapWrap
            {

    width: 100%;
            }
            #notofiDate{
                display: flex;
                align-items: center
                
            }
            #notiFiWrap{
   				/* margin-top: 25%; */
                width: 100%;
                height: auto;
                
                
            }
            #notiFiDateWrap{
                display: flex;
                justify-content: space-around;
                margin-bottom: 5%;
                align-items: center;
}
                
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
             border-top: 3px solid #82CBC4;
             border-bottom: 3px solid #82CBC4;
             font-family: GmarketSansMedium;
             display: flex;
             align-items: center;
             
           
             font-size: 67px;
            }

		.subTextWhrap{
		margin-bottom: 12%;
		font-weight: bold;
		}
	 	#petSanctuary{
	 			width: 100%;
	 		/*     margin-top: 40%; */
	 	}
	 	#petSanctuary .petSanctuaryWrap{
	 	width: 100%;
		display: flex;
    	align-items: center;
    	justify-content: center;
   		gap: 3%;
	 	}
	 	#petSanctuary .petSanctuaryWrap .petSanctuaryImg{
	 	    width: 35%;

	 	}
	 	.petSanctuaryImg img{
	 	    width: 100%;
		    object-fit: cover;
		    height: 100%;
	 	
	 	}
	 	.petSanctuaryInfo{
	 		font-size: 22px;
	 	}
	 	.petSanctuaryInfo a{
	 		cursor: pointer;
	 		text-decoration-line:underline;
	 		font-size: 12px;
	 	}

	 	#petSearchViewReply{
			font-family: GmarketSansMedium;
		    height: auto;
		    /* background-color: #EEC0DB; */
		    width: 100%;
		    padding-bottom: 6%;
		    padding-top: 3%;
		    /* margin: 0 auto 10%; */
		    /* border-radius: 30px; */
		    border-top: 3px solid #EEC0DB;
	 	}

	 	
	 	.petSearchViewReplyWrap{

	 	margin-bottom: 3%;
	 	width: 100%;
    	padding-bottom: 3%;
	 	
	 	}
	 	.psReply{
	 	border-bottom: 1px solid black;
	 	margin-bottom: 1%;
	 	width: 95%;
    	padding-bottom: 1%;
    	display: flex;
	 	}
	 	

	 	.psReplyTitle{
	 		width: 20%;
	 	}
	 	.psReplyText{
	 		width: 60%;
	 	}
	 	.psReplyBtn{
	 		width: 20%;
	 		font-family: GmarketSansMedium;
	 	}
	 	

	 	.psReplyWriteWrap{
	 		width: 100%;
	 		margin: 0 3% 0 3%;


	 	}
	 	#psReplyWriteForm{
	 		display: flex;
	 		gap:1%;
	 		font-family: GmarketSansMedium;
	 	}
	 	#psReplyWriteForm textarea {
		width: 76%;
		font-family: GmarketSansMedium;
		border-radius: 30px;
		padding: 10px;
		}
		#psReplyWriteForm textarea:focus{
			outline: none;
		}
		
	 	#psReplyWriteForm input {
		width: 13%;
		font-family: GmarketSansMedium;
		border-radius: 30px;
    border: none;
		}
		.psReplyDate{
			font-size: 12px;
		}
		.psReplyBtn button{
		    width: 48%;
    		height: 100%;
    		    border-radius: 30px;
    border: none;
    font-family: GmarketSansMedium;
    		
		}
		.timeFont{
			font-size: 40px;
		}
		.js-clock{
			color: red;
		}

		.psPoint{
		color: #036FB8;
		}
		.dateInner{
			width: 30%;
		}
		.innerWidth{
			width: 1160px;
    position: absolute;
    bottom: 0%;
        left: 22.5%;

		}
		#scrollSection1{
			background-color: #42EB7F;
			color: white;

		}
		#scrollSection1 .innerWidth {
			background-color: #42EB7F;
			margin: 0 auto;
			

		}
		#scrollSection1 .innerCenter {
		top: 19%;
}
			

		
		#scrollSection2 .innerCenter {
			    top: 20%;
			

		}
		
		#scrollSection1 h1{

			    font-size: 40px;
			    margin:0px;
			    font-weight: bold;
			    
			    
		}
		#scrollSection2 h1{

			    font-size: 40px;
			    margin:0px;
			    font-weight: bold;
			    
			    
		}
		.scrollSection .innerCenter{
			color: white;
		}
		.scrollSection .innerCenter  p{

				margin: 5px 0 5px;
			    font-size: 24px;
			    font-weight: bold;
			    
			    
		}
		#scrollSection2{
			background-color: #FFB300;
		}
		#scrollSection2 .innerWidth{
			bottom: 10%;
			left: 22.5%;

		}
		#scrollSection3{
			background-color: #ffffff;
		}
		#scrollSection3 .innerWidth{
			    top: 35%;
		}
		#scrollSection3 .innerCenter{
			top: 13%;
		}
		 #scrollSection4 .innerCenter{
			top: 27%;
		}
		#scrollSection3 .innerCenter h1, #scrollSection4 .innerCenter h1{
			font-size: 50px;
		}
		#scrollSection4{
			background-color: #F55D45;
		}
		#scrollSection4 .innerWidth{
			top: 50%;
		}
		#scrollSection5 .innerWidth{
			top: 75px;
		}
		.innerCenter{
			position: absolute;
			left: 22.5%;
		}
		.psReplyImg{
			width: 20%;
		    display: flex;
		    justify-content: flex-end;
		}
		.psReplyImg div{
			width: 28px;
			height: 28px;
			cursor: pointer;
			
		}
		.psReplyImg div img{
			width: 100%;
		}
		
 .under_num {
    margin-top: 20px;
    text-align: center;
    font-size: 0;
}
.under_num a {
    display: inline-block;
    margin-left: 10px;
    padding: 5px 10px;
    border-radius: 100px;
    font-size: 12px;
}
.under_num a:first-child {
    margin-left: 0;
}

 .under_num a.bt {
    border: 1px solid #eee;
    background: #eee;
}

.under_num a.num {
    border: 1px solid #EEC0DB;
    font-weight: 600;
    color: #EEC0DB;
}

.under_num a.num.on {
    background: #EEC0DB;
    color: white;
}
		
		
		
    </style>
</head>

<body>
   <!-- 헤더 영역 -->
  	<%@ include file="../fix/header.jsp" %>
  	
  	
    <!--content 시작-->

   
<!--         <div class="detailConent">
            <div class="detailTop">
                <h1>보호동물공고</h1>
            </div> -->
          
          
            
                <div class="scrollSection" id="scrollSection1">	

               	 <div class="innerCenter"> 
                	<h1>동물보호 공고</h1>
                	<p >손쉽게 유기 동물의 정보를 확인해 보세요!</p>
                	</div>
                	<div class="innerWidth">
                    <div class="datilImgContianer">
                        <div id="dtimgWharp">
                            <div class="datilImg">
                                <img src="https://cdn.discordapp.com/attachments/485361381575622676/949222386438393906/0E4A955.jpg">
                            </div>
                            <div class="datilImg">
                                <img src="https://cdn.discordapp.com/attachments/485361381575622676/949211335911157850/0E4A9590.jpg">
                            </div>
                            <div class="datilImg">
                                <img src="http://www.animal.go.kr/files/shelter/2022/01/202202111502734.jpg">
                            </div>
                        </div>
                        <div id="dtImgTop">
                            <div id="imgInNotifiNumber">
                            <b>공고번호</b> · <span>서울-송파-2022-00012</span>
                            </div>
                            <div id="dTstatusImg" class="">
                                <!-- 동물 상태에 따른 분기처리를 class를 부여하거나 js에서 해결(api사용하며해결)-->
                                <img src="https://cdn.discordapp.com/attachments/947836644889870356/949174463717580851/protect_close_icon.png">
                             </div>
                             <div id="dTgenImgDiv">
                                <img src="https://cdn.discordapp.com/attachments/947836644889870356/949669481947488296/womanIcon.png">
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
                            	&#10094;&#10094;
                                <!-- <img src="https://cdn.discordapp.com/attachments/947836644889870356/949275166301630494/arrow_LeftG_icon.png"> -->
                            </div>
                        </div>
                        <div class="dtArrowWharp" id="dTLeft">
                            <div class="deTailImgArrow" id="dta_left">
                            &#10095;&#10095;
                               <!--  <img src="https://cdn.discordapp.com/attachments/947836644889870356/949274812432396298/arrow_rightG_icon.png"> -->
                            </div>
                        </div>
                    </div>
						<!-- 미리보기 창 구현 구간 -->
						</div>
                </div>
              
                
                
                <div class="scrollSection" id="scrollSection2">
                	<div class="innerCenter">
                    <h1><span class="psPoint">송파대로8길 17 파인타운9단지</span> 위치에서 발견되었습니다.</h1>
                    <p>지도를 통해 자세한 발견 장소를 확인해 보세요!</p>
                    </div>
                <div class="innerWidth">
                <div id="mapWrap">
                    <div id="map" style="width:100%;height:550px;"></div>
                </div>
                </div>
                </div>
                
                <div class="scrollSection" id="scrollSection3">
                    <div class="innerCenter"> 
 						<h1><span class="psPoint">보호자를 찾아주세요!</span></h1>
                	</div>
                <div class="innerWidth">
	                <div id="notiFiWrap">
	             
	                   
	                    <div id="notiFiDateWrap">
	                        <div>
	                            <img src='https://cdn.discordapp.com/attachments/485361381575622676/949318608192933938/notifiImg.png'>
	                        </div>
	                    	<div class="dateInner">
	                    		<div><b>남은 공고 기간</b></div>
		                        <div id="notofiDate">
		                        	
		                            <div class="js-clock"><span id="test2312"></span></div>
		                           
		                        </div>
	
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
	                </div>
                </div>
                
                
                <div class="scrollSection" id="scrollSection4">
              		<div class="innerCenter"> 
	 					<h1><span class="psPoint">보호소 안내</span></h1>
	 					<p>현재 동물을 보호하고 있는 보호소를 안내해 드립니다.</p>
	                </div>
                <div class="innerWidth">
	                <div id="petSanctuary">
		              	<div class="petSanctuaryWrap">
		                	<div class="petSanctuaryImg">
		                		<img src="https://www.karma.or.kr/images_new/common/logo.jpg">
		                	</div>
		                	<div class="petSanctuaryInfo">
			                	<p>한국동물구조관리협회 | 경기도 양주시 남면 감악산로 63-37 (남면)<a onclick="petSanctuaryMap()">[위치보기]</a> <p>
			                	<p>	02-2642-9159 | 보호중 15 | 입양완료 7 </p>
		                	</div>
	                	</div>
	                </div>
                
<!--                       
                <br>

             
                <hr id="psvHr"> -->
                
                 <button class="toSearchList" onclick="location.href='${pageContext.request.contextPath}/app/jsp/board/petSearchList.jsp';">목록으로</button>
                </div>
            </div>
			
       
        <!-- 댓글 구현 구간 -->
         <div class="scrollSection" id="scrollSection5">
         <div class="innerWidth">
        <div id="petSearchViewReply">

        	<div class="petSearchViewReplyWrap">
	        	<div class="psReply"> 
	        		<div class="psReplyTitle">
		        		<div class="psReplyMember">
		        		버찌집사
		        		</div>
		        		<div class="psReplyDate">
		        		2022.12.02 14:52
		        		</div>
	        		</div>
	        		<div class="psReplyText">너무 귀엽네요!!</div>
	        		<div class="psReplyImg">
	        			<div>
	        			<img src="https://cdn.discordapp.com/attachments/947836644889870356/950302233436778526/edit_icon.png">
	        			</div>
	        			<div>
	        			<img src="https://cdn.discordapp.com/attachments/947836644889870356/950302233206071316/delete__icon.png">
	        			</div>
	        		</div>
	        	</div>
	        	<div class="psReply"> 
	        		<div class="psReplyTitle">
		        		<div class="psReplyMember">
		        		버찌집사
		        		</div>
		        		<div class="psReplyDate">
		        		2022.12.02 14:52
		        		</div>
	        		</div>
	        		<div class="psReplyText">너무 귀엽네요!!</div>
	        		<div class="psReplyImg">
	        			<div>
	        			<img src="https://cdn.discordapp.com/attachments/947836644889870356/950302233436778526/edit_icon.png">
	        			</div>
	        			<div>
	        			<img src="https://cdn.discordapp.com/attachments/947836644889870356/950302233206071316/delete__icon.png">
	        			</div>
	        		</div>
	        	</div>
	        	<div class="psReply"> 
	        		<div class="psReplyTitle">
		        		<div class="psReplyMember">
		        		버찌집사
		        		</div>
		        		<div class="psReplyDate">
		        		2022.12.02 14:52
		        		</div>
	        		</div>
	        		<div class="psReplyText">너무 귀엽네요!!</div>
	        		<div class="psReplyImg">
	        			<div>
	        			<img src="https://cdn.discordapp.com/attachments/947836644889870356/950302233436778526/edit_icon.png">
	        			</div>
	        			<div>
	        			<img src="https://cdn.discordapp.com/attachments/947836644889870356/950302233206071316/delete__icon.png">
	        			</div>
	        		</div>
	        	</div>
	        	<div class="psReply"> 
	        		<div class="psReplyTitle">
		        		<div class="psReplyMember">
		        		버찌집사
		        		</div>
		        		<div class="psReplyDate">
		        		2022.12.02 14:52
		        		</div>
	        		</div>
	        		<div class="psReplyText">너무 귀엽네요!!</div>
	        		<div class="psReplyImg">
	        			<div>
	        			<img src="https://cdn.discordapp.com/attachments/947836644889870356/950302233436778526/edit_icon.png">
	        			</div>
	        			<div>
	        			<img src="https://cdn.discordapp.com/attachments/947836644889870356/950302233206071316/delete__icon.png">
	        			</div>
	        		</div>
	        	</div>
	        	<div class="psReply"> 
	        		<div class="psReplyTitle">
		        		<div class="psReplyMember">
		        		버찌집사
		        		</div>
		        		<div class="psReplyDate">
		        		2022.12.02 14:52
		        		</div>
	        		</div>
	        		<div class="psReplyText">너무 귀엽네요!!</div>
	        		<div class="psReplyImg">
	        			<div>
	        			<img src="https://cdn.discordapp.com/attachments/947836644889870356/950302233436778526/edit_icon.png">
	        			</div>
	        			<div>
	        			<img src="https://cdn.discordapp.com/attachments/947836644889870356/950302233206071316/delete__icon.png">
	        			</div>
	        		</div>
	        	</div>
	        	<div class="psReply"> 
	        		<div class="psReplyTitle">
		        		<div class="psReplyMember">
		        		버찌집사
		        		</div>
		        		<div class="psReplyDate">
		        		2022.12.02 14:52
		        		</div>
	        		</div>
	        		<div class="psReplyText">너무 귀엽네요!!</div>
	        		<div class="psReplyImg">
	        			<div>
	        			<img src="https://cdn.discordapp.com/attachments/947836644889870356/950302233436778526/edit_icon.png">
	        			</div>
	        			<div>
	        			<img src="https://cdn.discordapp.com/attachments/947836644889870356/950302233206071316/delete__icon.png">
	        			</div>
	        		</div>
	        	</div>
	        	<div class="psReply"> 
	        		<div class="psReplyTitle">
		        		<div class="psReplyMember">
		        		버찌집사
		        		</div>
		        		<div class="psReplyDate">
		        		2022.12.02 14:52
		        		</div>
	        		</div>
	        		<div class="psReplyText">너무 귀엽네요!!</div>
	        		<div class="psReplyImg">
	        			<div>
	        			<img src="https://cdn.discordapp.com/attachments/947836644889870356/950302233436778526/edit_icon.png">
	        			</div>
	        			<div>
	        			<img src="https://cdn.discordapp.com/attachments/947836644889870356/950302233206071316/delete__icon.png">
	        			</div>
	        		</div>
	        	</div>
	      
					<div class="under_num">
		               
		                <a href="#" class="num on">1</a>
		                <a href="#" class="num">2</a>
		                <a href="#" class="num">3</a>
		           
		            </div>
	           
        	</div>
        	
        	<div class="psReplyWriteWrap">
        		
        			<form id="psReplyWriteForm">
        				<textarea rows="5" placeholder="댓글을 작성해주세요."></textarea>

        				
        				<input type="submit" value="등록">
        			</form>
        		
        	</div>
        	</div>
        	
         
			

    <!--content 종료-->

    <!--푸터영역-->
     <%@ include file="/app/jsp/fix/footer.jsp" %>
     </div>
       </div>
</body>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=e8c046fffe25962d6ea1d0fbd0d4d7cf"></script>
<script src="https://code.jquery.com/jquery-1.12.0.min.js"></script>
<script>
    var dTRight = document.getElementById('dTRight');
    var dTLeft = document.getElementById('dTLeft');
    const datilImgs = document.querySelectorAll('.datilImg');
    const dtimgWharp = document.querySelector('#dtimgWharp');
  
    
    var count = 0;
    
    
    var mHtml = $("html");
    var page = 1;


    mHtml.animate({scrollTop : 0},10);
    $(window).on("wheel", function(e) {
        if(mHtml.is(":animated")) return;
        if(e.originalEvent.deltaY > 0) {
            if(page == 5) return;
            page++;
        } else if(e.originalEvent.deltaY < 0) {
            if(page == 1) return;
            page--;
        }
        var posTop =(page-1) * $(window).height();
        mHtml.animate({scrollTop : posTop});
    })
    
    
	
    
    // 위치정보를 보호소 지도 페이지에 넘겨줘야함
    function petSanctuaryMap() {
    	 window.open("petSanctuaryMap.jsp", "_blank", "width=790px, height=540px");
	} 

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
        center: new kakao.maps.LatLng(37.4781913, 127.128718), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };

    
var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

// 마커가 표시될 위치입니다 
var markerPosition  = new kakao.maps.LatLng(37.4781913, 127.128718); 

// 마커를 생성합니다
var marker = new kakao.maps.Marker({
    position: markerPosition
});
//일반 지도와 스카이뷰로 지도 타입을 전환할 수 있는 지도타입 컨트롤을 생성합니다
var mapTypeControl = new kakao.maps.MapTypeControl();

//지도에 컨트롤을 추가해야 지도위에 표시됩니다
//kakao.maps.ControlPosition은 컨트롤이 표시될 위치를 정의하는데 TOPRIGHT는 오른쪽 위를 의미합니다
map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);

//지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성합니다
var zoomControl = new kakao.maps.ZoomControl();
map.addControl(zoomControl, kakao.maps.ControlPosition.LEFT);

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
  const xmasDay = new Date("2022-03-09:12:00:00+0900");
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
    timer.innerHTML="-"+day+"일 <b class='timeFont'>"+hoursChange+":"+minutesChange+":"+secondsChange+"</b>";


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