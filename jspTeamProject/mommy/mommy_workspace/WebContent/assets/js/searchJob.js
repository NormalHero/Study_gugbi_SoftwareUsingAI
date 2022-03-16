	const $heart = $('.heart');

		$heart.on("click", function(){
		
			if($heart.attr("src")=='../../images/heart.png'){
				
				$heart.attr("src", "../../images/emptyHeart.png");
			}else{
			
				$heart.attr("src", "../../images/heart.png");
			}
		
			
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

			
		const $care = $("#careType");
		const $searchDetail = $("#searchDetail");
		const $searchArea = $("#searchArea");
		
		$care.on("click",function(){
		
			 modal('my_modal');

		});

		
		$searchDetail.on("click",function(){
			
			 modal2('myModal2');

		});
		
	 $searchArea.on("click", function() {
			modal3('myModal3');
	});
		
  	function modal2(id) {
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
	    modal.querySelector('.modalCloseBtn2').addEventListener('click', function() {
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
		
		
		
		
	
  	function modal3(id) {
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
	    modal.querySelector('.modalCloseBtn3').addEventListener('click', function() {
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