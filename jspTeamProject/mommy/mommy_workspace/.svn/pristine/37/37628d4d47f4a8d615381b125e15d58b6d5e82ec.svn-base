




const $main = $('.media-main');
  const $mainBox=$('.mainBox');

   
   
   var contents = $.ajax({
		url: "myPageInfo.jsp", 		// 통신할url
		dataType: "html",			//전송받은 데이터를 변환시킬 컨텐츠 타입
		type:"get"	,
		success:function(e){
			$('div#informatiom').html(e);
		},
		error:function(){
			alert("실패");
		}
		
	});
   
  const $lookProfile=$('#lookProfile');
  const $bookMark =$('#bookMark');
  const $changePw = $('#changePw');
  const $information = $('#information');
  
	
	$changePw.on("click",function(){
		
		contents=$.ajax({
			url: "myPageChangePw.jsp", 		// 통신할url
			dataType: "html",			//전송받은 데이터를 변환시킬 컨텐츠 타입
			type:"get"	,
			success:function(e){
				$('div#informatiom').html(e);
			},
			error:function(){
				alert("실패");
			}
			
			});
		
		 if (window.matchMedia("(max-width: 700px)").matches) {
				$main.css('display','none');
		  		$mainBox.css('display','block');}
	});
 	
	
	$lookProfile.on("click",function(){
	
		contents=$.ajax({
			url: "lookSitterProfile.jsp", 		// 통신할url
			dataType: "html",			//전송받은 데이터를 변환시킬 컨텐츠 타입
			type:"get"	,
			success:function(e){
				$('div#informatiom').html(e);
			},
			error:function(){
				alert("실패");
			}
			
			});
		
		 if (window.matchMedia("(max-width: 700px)").matches) {
				$main.css('display','none');
		  		$mainBox.css('display','block');}
	});
   	
	$information.on("click",function(){
		
		contents=$.ajax({
			url: "myPageInfo.jsp", 		// 통신할url
			dataType: "html",			//전송받은 데이터를 변환시킬 컨텐츠 타입
			type:"get"	,
			success:function(e){
				$('div#informatiom').html(e);
			},
			error:function(){
				alert("실패");
			}
			
			});
		
		 if (window.matchMedia("(max-width: 700px)").matches) {
				$main.css('display','none');
		  		$mainBox.css('display','block');}
	});
   	

	$bookMark.on("click",function(){
	
		contents=$.ajax({
			url: "myPageHeart.jsp", 		// 통신할url
			dataType: "html",			//전송받은 데이터를 변환시킬 컨텐츠 타입
			type:"get"	,
			success:function(e){
				$('div#informatiom').html(e);
			},
			error:function(){
				alert("실패");
			}
			
			});
		
		 if (window.matchMedia("(max-width: 700px)").matches) {
				$main.css('display','none');
		  		$mainBox.css('display','block');}
	});
   	


    const open = () => {
      document.querySelector(".modal").classList.remove("hidden");
      console.log("check");
    }
  
    const close = () => {
      document.querySelector(".modal").classList.add("hidden");
    }
  
    
    document.querySelector(".openBtn").addEventListener("click", open);
    document.querySelector(".submitBtn").addEventListener("click", close);
    document.querySelector(".quit").addEventListener("click", close);
    document.querySelector(".bg").addEventListener("click", close);
  
   
    
    