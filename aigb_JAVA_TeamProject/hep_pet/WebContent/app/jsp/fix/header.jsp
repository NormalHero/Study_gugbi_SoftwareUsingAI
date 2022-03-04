<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
     
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/header.css">
	<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <title>헤더</title>
</head>
<body>
  
    <div class="main_page_wrap">
        <div id="header_wrap" >
            <div class="header_fixed">
                <div class="header_color" >
                <div class="header_flex"> 
                    <div class="header_logo"><h1><a ><img src="https://cdn.discordapp.com/attachments/947836644889870356/948951279286255636/-001_8.png" alt="" style="width: 130px; height: 70px; margin-top: 5px;"></a></h1></div>
                    <div class="header_logo"><h1><a></a></h1></div>
                    <div class="header_util"><span><a  onclick="modalOpen()" id="loginbtn">로그인</a> <a href="#">회원가입</a></span></div>

                   
                </div> 
            </div>
            <!--헤더 로그인 회원가입 검색 버튼  -->
            <nav class="heaver_nav"  >
              
                
                <ul class="nav_header"  >
                    <li class="nav_header_li"   ><span >신고 및 제보</span>
                        <ul class="nav_sub_header" >
                            <li class="nav_sub_header_li"  id="cat"> <a href="https://www.naver.com/">목격제보</a></li>
                            <li class="nav_sub_header_li"> <a href="https://www.naver.com/">보호</a></li>
                            <!-- <li class="nav_sub_header_li"> <a href="https://www.naver.com/">test1</a></li> -->
                        </ul>
                    </li>

                    <li class="nav_header_li"  id="nav_header_li"><span>보호중(조회)
                    </span>
                        <ul class="nav_sub_header"> 
                            <li class="nav_sub_header_li" ><a>유기동물 조회</a></li>
                            <li class="nav_sub_header_li" ><a>보호소센터 조회</a></li>
                            <!-- <li class="nav_sub_header_li" ><a>33</li> -->
                        </ul>
                    </li>

                    <li class="nav_header_li"  id="nav_header_li"><span>커뮤니티</span>
                        <ul class="nav_sub_header">
                            <li class="nav_sub_header_li"><a>후기</a></li>
                            <li class="nav_sub_header_li"><a>동물자랑</a></li>
                            <!-- <li class="nav_sub_header_li"><a></a>33</li> -->
                        </ul>
                    </li>

                    <li class="nav_header_li"  id="nav_header_li"><span>함께해요</span>
                        <ul class="nav_sub_header">
                            <li class="nav_sub_header_li"><a>봉사</a></li>
                            <li class="nav_sub_header_li"><a>후원(미정)</a></li>
                            <!-- <li class="nav_sub_header_li">33</li> -->
                        </ul>
                    </li>

                    <li class="nav_header_li"  id="nav_header_li"><span>Q&A
                    </span>
                        <ul class="nav_sub_header">
                            <li class="nav_sub_header_li"><a>문의사항</a></li>
                            <li class="nav_sub_header_li"><a>자주하는 질문</a></li>
                            <!-- <li class="nav_sub_header_li">33</li> -->
                        </ul>
                    </li>
                    <li class="nav_header_li"  id="nav_header_li"><span><a href="#">유기동물 지도</a>
                    </span>
                        <ul class="nav_sub_header">
                            <!-- <li class="nav_sub_header_li"><a>맵핑</a></li> -->
                            <!-- <li class="nav_sub_header_li"><a>자주하는 질문</a></li> -->
                            <!-- <li class="nav_sub_header_li"><a>33</a></li> -->
                        </ul>
                    </li>
                </ul>
           
            </nav>
            
            </div>
            
  <!-- 로그인 -->
  <form action="#">
    <div id="modle_main">
      <fieldset id="login_fied">
          <legend>로그인창</legend>
          <div id ="modal_close">
          <a id="modal_close_btn" onclick="modalClose()" >닫기</a>
          </div>
      <div id="login_main_div">
          <div id="model_login">
              <div id="model_login_id">
              <label>아이디</label>
              <input type="text" id="model_input_id">                    
              </div>
                   
              <div id="model_login_pw">
              <span>비밀번호<span>
              <input type="password" id="model_intput_pw">
              </div>
              <div id="model_login_login">
              <input type="button" value="로그인" id="model_input_login">
              </div>
              
              <div id="model_login_footer">
              <span class="autologin">
              <div id="model_login_checkbox">
              <input type="checkbox" id ="model_input_checkbox">
              <label>자동 로그인</label>   
              </span>
              <span class="search"><a href="">비밀번호찾기</a> <a id="joinA">회원가입</a></span>
              </div>
              </div>
              </div>   
      
              <!-- 위에까지가 로그인 관련  -->
         
              <hr>
              <span>🐱‍👤소셜 로그인 해보기 🐱‍👤</span>
              <ul>
               <li class="naverlogin"><a><img src="" alt="">네이버 자리</a></li>
               <li class="kakaologin"><a><img src="" alt="">카카오 자리</a></li>
               <li class="googlelogin"><a><img src="" alt="">구글자리 </a></li>
              </ul>
              <hr style="width: 100%;">
              <h5>비영리 사이트 입니다.</h5>
           </div>
      </div>
      </fieldset>
      </div>
  </form>







        <script src="https://code.jquery.com/jquery-1.12.0.min.js"></script>
   <script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/header.js" ></script>	
        </body>
</html>