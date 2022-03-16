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
      <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
        <script src="https://code.jquery.com/jquery-latest.min.js" type="application/javascript"></script>
        <script type="application/javascript" src="https://zelkun.tistory.com/attachment/cfile8.uf@99BB7A3D5D45C065343307.js"></script>
        
      
    <title>내 프로필 수정</title>
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
        
        @media (max-width: 576px){
        
        #header{width: 74%;}
        div#main {
margin-left: 25px !important;
    width: 128% !important;
    overflow: hidden;
}

   .container.medium {
            width: 70% !important;
        }

        .button{
        width: 91px !important;
    margin-left: -20px !important;
        }

        .button:hover,
		.button:active {
			box-shadow: inset 0 0 0 1px #ff7065;
			color: white !important;
        }

        .innerContent{
            padding: 1.5rem 0 0 0;

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
        {
        left: 87% !important;
    width: 35px !important;
    }

    div.innerContent p{
        margin: 0 0 1em 0;
    }

    
.range {
  display: flex;
  width: 397px !important;
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

textarea#message{
    resize:none;
    font-size:16px;
    width: 95%;
    background-color:white !important;
    border-radius: 3px;
    margin-bottom: 25px;
}

        /*aside-------------------------*/
 aside.aside2{
  display: none;
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
            cursor: pointer;
        }

        .buttonAside:hover,
		.buttonAside:active {
			box-shadow: inset 0 0 0 1px #ffb61a;
			color: white !important;
        }



/*예원님 css ------------ 모달창 구현 안되어있습니다 */
.address{
	    width: 331px !important;
		}
		
		
		
              #my_modal {
                  display: none;
    width: 500px;
    height: 60%;
    padding: 20px 60px;
    background-color: #fefefe;
    border: 1px solid #888;
    border-radius: 0.5rem;
    overflow: hidden;
    margin-top: -182px !important;
            }

            #my_modal .modal_close_btn {
                position: absolute;
                top: 10px;
                right: 28px;
            }
            
            .mediaMain{
                width: 69% !important;
            }
            
            
            
        }
      /* ----------------------------------------------------------------------------------------------- */  
        
div#main {
    padding: 3.5em 0 3.5em 0;
}

   .container.medium {
            width: 70% !important;
        }

        .button{
            background: #ff7065;
            height: 43px;
            color: white !important;
            box-shadow: none;
            border-radius: 0.25rem !important;
            font-size:13px;
        }

        .button:hover,
		.button:active {
			box-shadow: inset 0 0 0 1px #ff7065;
			color: white !important;
        }

        .innerContent{
            padding: 1.5rem 0 0 0;

        }

#wage{
	border: solid 1px #e2eaec;
	border-radius: 3px;
	padding: 8px 20px;
	font-size:16px;
	font-weight:bold;
	width:230px;
	margin-right:10px;
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
    cursor:pointer;
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

textarea#message{
    resize:none;
    font-size:16px;
    width: 95%;
    background-color:white !important;
    border-radius: 3px;
    margin-bottom: 25px;
}

        /*aside-------------------------*/
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
            cursor: pointer;
        }

        .buttonAside:hover,
		.buttonAside:active {
			box-shadow: inset 0 0 0 1px #ffb61a;
			color: white !important;
        }



/*예원님 css ------------ 모달창 구현 안되어있습니다 */
.address{
		width: 218px;
	    display: inline-block;
	    background-color: white;
	    margin-bottom: 19px;
        font-size:16px;
		}
		
		
		
              #my_modal {
                display: none;
            	width: 500px;
    			height: 69%;
                padding: 20px 60px;
                background-color: #fefefe;
                border: 1px solid #888;
                border-radius: 0.5rem;
                overflow: hidden;
            }

            #my_modal .modal_close_btn {
                position: absolute;
                top: 10px;
                right: 28px;
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
         
         
         <!-- 모달창 -->
		   <div id="my_modal">
	
	<iframe src="periodModal2.jsp" style="
      position: absolute;
    width: 106%;
    margin-left: -69px;
    height: 100%;
    margin-top: -38px;
			">대체 내용</iframe>  
			  <a class="modal_close_btn"><img src="images/whiteX.png" style="width:20px;"></a>
        </div>
			
		<!-- Main -->
		<div id="main" class="container medium" style = "display:flex;">
			<!-- profile header -->
            <div style = "width: 70%; background: white; position:relative;" class="mediaMain" ">
                <div style="text-align: left; display:inline-block; margin-left:15px;">
                    <label><input type="file" style="display:none;">
                    <img src="images/유저.png" style="width: 100px; border-radius: 150px; cursor: pointer; ">
                    </label>
                    <div style = "position:absolute; top: 19px; left: 136px;">
                          <h3 style="margin-bottom: 3px; font-size: 18px;">김아무개</h3><span style = "margin-top: 20px; font-size:16px;">29세, 여</span>
                     </div>
                     <div  style = "position:absolute; top: 30px; left: 76%;">
                            <button class = "button">글 저장하기</button></a>
                     </div>
                </div>
                
                <hr class = "split">
                    <div class = "innerContent">
                        <p class ="innerTitle">선호하는 돌봄유형</p>
                        <div>
                            <div style = "float:left; margin-right:30px;">
                                <input type="checkbox" id="inside" name="inside">
                                <label for="inside" style = "font-size:16px;">실내놀이</label>
                            </div>
                            <div style = "float:left;  margin-right:30px;">
                                <input type="checkbox" id="commit" name="commit" checked>
                                <label for="commit" style = "font-size:16px;">등하원</label>
                            </div>
                            <div style = "float:left;  margin-right:30px;">
                                <input type="checkbox" id="food" name="food" checked>
                                <label for="food" style = "font-size:16px;">밥 챙겨주기</label>
                            </div>
                            <div style = "float:left;  margin-right:30px;">
                                <input type="checkbox" id="clean" name="clean" checked>
                                <label for="clean" style = "font-size:16px;">청소</label>
                            </div>
                            <div>
                                <input type="checkbox" id="teach" name="teach" checked>
                                <label for="teach" style = "font-size:16px;">학습 지도</label>
                            </div>
                        </div>
                    </div>

                    <hr style = "margin: 0px; width: 95%; padding: 10px 0;" >
                        <div class = "innerContent">
                            <p class ="innerTitle">아이 정보</p>
                            <div>
                                <div style = "float:left; margin-right:30px;">
                                    <input type="checkbox" id="newborn" name="newborn">
                                    <label for="newborm" style = "font-size:16px;">신생아</label>
                                </div>
                                <div style = "float:left;  margin-right:30px;">
                                    <input type="checkbox" id="baby" name="baby" checked>
                                    <label for="baby" style = "font-size:16px;">영아</label>
                                </div>
                                <div style = "float:left;  margin-right:30px;">
                                    <input type="checkbox" id="kinder" name="kinder" checked>
                                    <label for="kinder" style = "font-size:16px;">유치원생</label>
                                </div>
                                <div style = "float:left;  margin-right:30px;">
                                    <input type="checkbox" id="elememtary" name="elememtary" checked>
                                    <label for="elememtary" style = "font-size:16px;">초등학생</label>
                                </div>
                               
                            </div>
                        </div>
                     
            <hr style = "margin: 0px; width: 95%; padding: 10px 0;" >
                        <div class = "innerContent" style = "position:relative;">
                            <p class ="innerTitle">원하는 돌봄 기간</p>
                            <div class = "innerModify" id="period">수정</div> <!-- 모달 창으로 이동 -->
                            <div class="content3">
                                <!-- ajax 로 선택한 것 여기에 출력 -->
                               <p style ="font-size:16px;" >원하는 돌봄 기간을 입력해주세요.</p>
                            </div>
                        </div>

                                        
            <hr style = "margin: 0px; width: 95%; padding: 10px 0;" >
               <div class = "innerContent" style = "position:relative;">
                    <p class ="innerTitle">희망 시급</p>             
                      <form >
                     	 <div style = "font-size:16px;">
	                          <input type = "number" min="9160" step="20" id = "wage" value = "9160">
	                          <span>원</span>
                          </div>
                     </form>
                </div>
              
                <hr style = "margin: 0px; width: 95%; padding: 10px 0;" >
                <div class = "innerContent" style = "position:relative;">
                    <p class ="innerTitle">이런 사람을 원해요</p>             
                    <textarea name="message" id="message" placeholder="원하는 시터에 대한 설명을 적어주세요" rows="4"></textarea>
                </div>

                <hr style = "margin: 0px; width: 95%; padding: 10px 0;" >
                <div class = "innerContent" style = "position:relative;">
                    <p class ="innerTitle">활동 가능 지역</p>             
                    <div class="content3" style="padding-bottom: 10px;">
                        <div>
                            <select id="sido" class="address">
                            <option value="">선택</option>
                            </select>
                            <select id="sigugun" class="address">
                            <option value="">선택</option>
                            </select>
                            <select id="dong" class="address">
                            <option value="">선택</option>
                            </select>
                        </div>
                     </div>
                </div>
            </div>
                    
            <!-- aside part -->
            
            <div style="padding-left:20px;">
                
                      
            </div>
        </div>
    </div>
        
    <aside class = "aside2">
        <div style="
        width: 300px; 
        border : solid 1px #e2eaec;
        overflow: hidden;
        padding: 25px;
        background:white;
        ">
            <div>
                <h5 style = "font-weight:500">부모님 게시글 목록</h5>
                <p style = "font-size:16px;">마미랑 부모님들의 프로필을 참고해서 나의 프로필을 더 멋지게 꾸며보세요! 멋진 프로필은 좋은 시터와 높은 매칭률에 도움이 됩니다!</p>
                <a href = "searchJob.jsp;"><button class = "buttonAside">부모님 게시글 목록</button></a>
            </div>
        </div>
        <br>
        <div style="
        width: 300px; 
        border : solid 1px #e2eaec;
        overflow: hidden;
        padding: 25px;
        background:white;
        ">
            <div>
                <h5 style = "font-weight:500">시터 찾기 바로가기</h5>
                <p style = "font-size:16px;">마미랑만의 인증 시스템을 거친 믿음직한 시터들을 지금 바로 만나보세요.</p>
                <a href = "searchMomCopy.jsp;"><button class = "buttonAside">시터 찾기</button></a>
            </div>
        </div>
    </aside>	
    
    

<!-- footer -->
         <div class="wrapper">
            <div class="inner">
               <jsp:include page="footer.jsp"/>
            </div>
          </div>	
          
		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>
          
</body>
<script>
    
class Slider {
  constructor (rangeElement, valueElement, options) {
    this.rangeElement = rangeElement
    this.valueElement = valueElement
    this.options = options

    // Attach a listener to "change" event
    this.rangeElement.addEventListener('input', this.updateSlider.bind(this))
  }

  // Initialize the slider
  init() {
    this.rangeElement.setAttribute('min', options.min)
    this.rangeElement.setAttribute('max', options.max)
    this.rangeElement.value = options.cur

    this.updateSlider()
  }

  // Format the money
  asMoney(value) {
    return parseFloat(value) + ' 원'
      .toLocaleString('en-US', { maximumFractionDigits: 2 })
  }

  generateBackground(rangeElement) {   
    if (this.rangeElement.value === this.options.min) {
      return
    }

    let percentage =  (this.rangeElement.value - this.options.min) / (this.options.max - this.options.min) * 100
    return 'background: linear-gradient(to right, #ffb61a, #ff7065 ' + percentage + '%, #d3edff ' + percentage + '%, #dee1e2 100%)'
  }

  updateSlider (newValue) {
    this.valueElement.innerHTML = this.asMoney(this.rangeElement.value)
    this.rangeElement.style = this.generateBackground(this.rangeElement.value)
  }
}

let rangeElement = document.querySelector('.range [type="range"]')
let valueElement = document.querySelector('.range .range__value span') 

let options = {
  min: 9160,
  max: 30001,
  cur: 9160
}

if (rangeElement) {
  let slider = new Slider(rangeElement, valueElement, options)

  slider.init()
}
</script>

<script type="text/javascript" >
			
    jQuery(document).ready(function(){
      //sido option 추가
      jQuery.each(hangjungdong.sido, function(idx, code){
        //append를 이용하여 option 하위에 붙여넣음
        jQuery('#sido').append(fn_option(code.sido, code.codeNm));
      });
    
      //sido 변경시 시군구 option 추가
      jQuery('#sido').change(function(){
        jQuery('#sigugun').show();
        jQuery('#sigugun').empty();
        jQuery('#sigugun').append(fn_option('','선택')); //
        jQuery.each(hangjungdong.sigugun, function(idx, code){
          if(jQuery('#sido > option:selected').val() == code.sido)
            jQuery('#sigugun').append(fn_option(code.sigugun, code.codeNm));
        });
    
        //세종특별자치시 예외처리
        //옵션값을 읽어 비교
        if(jQuery('#sido option:selected').val() == '36'){
          jQuery('#sigugun').hide();
          //index를 이용해서 selected 속성(attr)추가
          //기본 선택 옵션이 최상위로 index 0을 가짐
          jQuery('#sigugun option:eq(1)').attr('selected', 'selected');
          //trigger를 이용해 change 실행
          jQuery('#sigugun').trigger('change');
        }
      });
    
      //시군구 변경시 행정동 옵션추가
      jQuery('#sigugun').change(function(){
        //option 제거
        jQuery('#dong').empty();
        jQuery.each(hangjungdong.dong, function(idx, code){
          if(jQuery('#sido > option:selected').val() == code.sido && jQuery('#sigugun > option:selected').val() == code.sigugun)
            jQuery('#dong').append(fn_option(code.dong, code.codeNm));
        });
        //option의 맨앞에 추가
        jQuery('#dong').prepend(fn_option('','선택'));
        //option중 선택을 기본으로 선택
        jQuery('#dong option:eq("")').attr('selected', 'selected');
    
      });
    
      jQuery('#dong').change(function(){
        var sido = jQuery('#sido option:selected').val();
        var sigugun = jQuery('#sigugun option:selected').val();
        var dong = jQuery('#dong option:selected').val();
        var dongCode = sido + sigugun + dong + '00';

      });
    });
    
    function fn_option(code, name){
      return '<option value="' + code +'">' + name +'</option>';
    }
    


</script>

<script>

const $period = $('div#period');

$period.on("click", function(){
	 console.log("들어옴");
	 modal('my_modal');
	 
});

function modal(id) {
	    var zIndex = 9999;
	    var modal = document.getElementById(id);

	    // 모달 div 뒤에 희끄무레한 레이어
	    var bg = document.createElement('div');
	    bg.setStyle({
	        position: 'fixed',
	        zIndex: zIndex,
	        left: '0px',
	        top: '0px',
	        width: '100%',
	        height: '100%',
	        overflow: 'auto',
	        // 레이어 색갈은 여기서 바꾸면 됨
	        backgroundColor: 'rgba(0,0,0,0.4)'
	    });
	    document.body.append(bg);

	    // 닫기 버튼 처리, 시꺼먼 레이어와 모달 div 지우기
	    modal.querySelector('.modal_close_btn').addEventListener('click', function() {
	        bg.remove();
	        modal.style.display = 'none';
	    });

	    modal.setStyle({
	        position: 'fixed',
	        display: 'block',
	        boxShadow: '0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19)',

	        // 시꺼먼 레이어 보다 한칸 위에 보이기
	        zIndex: zIndex + 1,

	        // div center 정렬
	        top: '55%',
	        left: '50%',
	        transform: 'translate(-50%, -50%)',
	        msTransform: 'translate(-50%, -50%)',
	        webkitTransform: 'translate(-50%, -50%)'
	    });
	}

	// Element 에 style 한번에 오브젝트로 설정하는 함수 추가
	Element.prototype.setStyle = function(styles) {
	    for (var k in styles) this.style[k] = styles[k];
	    return this;
	};


</script>

</html>