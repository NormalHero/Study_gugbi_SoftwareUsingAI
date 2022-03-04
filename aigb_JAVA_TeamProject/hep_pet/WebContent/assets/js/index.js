  
//  슬라이드 배너

var slideIndex = 1;
showSlides(slideIndex);


function plusSlides(n) {
  showSlides(slideIndex += n);
}


function currentSlide(n) {
  showSlides(slideIndex = n);
}

function showSlides(n) {
  var i;
  var slides = document.getElementsByClassName("mySlides");
 
  if (n > slides.length) {slideIndex = 1}
  if (n < 1) {slideIndex = slides.length}
  for (i = 0; i < slides.length; i++) {
      slides[i].style.display = "none";
  }
 
  slides[slideIndex-1].style.display = "block";
 
}
/////////2번째 배너///////////
var autoslideIndex = 0;
autoshowSlides();

function autoshowSlides() {
  var y;
  var autoslides = document.getElementsByClassName("automySlides");

  for (y = 0; y < autoslides.length; y++) {
    autoslides[y].style.display = "none";  
  }
  autoslideIndex++;
  if (autoslideIndex > autoslides.length) {autoslideIndex = 1}    

  
  autoslides[autoslideIndex-1].style.display = "block";  
  
  setTimeout(autoshowSlides, 4000); 
}
///////////////////////


// 두번째 슬라이드

 // 슬라이드 배너 마우스 오버

 $(".slides_text1,.slides_text2,.slides_text3,.slides_text4,.slides_text5,.slides_text6").hide();

$('.pet1:nth-child(1)').hover(function(){	
     $(".slides_text1").show();  
 
}, function(){
    $(".slides_text1").hide();
  });

$('.pet1:nth-child(2)').hover(function(){	
     $(".slides_text2").show();  
 
}, function(){
    $(".slides_text2").hide();
  });
$('.pet1:nth-child(3)').hover(function(){	
     $(".slides_text3").show();  
 
}, function(){
    $(".slides_text3").hide();
  });

$('.pet1:nth-child(4)').hover(function(){	
     $(".slides_text4").show();  
 
}, function(){
    $(".slides_text4").hide();
  });
$('.pet1:nth-child(5)').hover(function(){	
     $(".slides_text5").show();  
 
}, function(){
    $(".slides_text5").hide();
  });
$('.pet1:nth-child(6)').hover(function(){	
     $(".slides_text6").show();  
 
}, function(){
    $(".slides_text6").hide();
  });





/////////////////퀵메뉴 ////////////////////

	$('.q_nav_ul li:nth-child(1)').mouseover(function(){	
		$(".q_nav_ul li:nth-child(1)").css("transform","scale(1.3)");
		$(".q_nav_ul li:nth-child(1)").css("z-index","1");
	});
    $('.q_nav_ul li:nth-child(1)').mouseleave(function(){
		$(".q_nav_ul li:nth-child(1)").css("transform","scale(1.0)");
        $(".q_nav_ul li:nth-child(1)").css("z-index","0");
	});

	$('.q_nav_ul li:nth-child(2)').mouseover(function(){	
		$(".q_nav_ul li:nth-child(2)").css("transform","scale(1.3)");
	});
    $('.q_nav_ul li:nth-child(2)').mouseleave(function(){
		$(".q_nav_ul li:nth-child(2)").css("transform","scale(1.0)");
        $(".q_nav_ul li:nth-child(2)").css("z-index","0");
	});

	$('.q_nav_ul li:nth-child(3)').mouseover(function(){	
		$(".q_nav_ul li:nth-child(3)").css("transform","scale(1.3)");
	});
    $('.q_nav_ul li:nth-child(3)').mouseleave(function(){
		$(".q_nav_ul li:nth-child(3)").css("transform","scale(1.0)");
        $(".q_nav_ul li:nth-child(3)").css("z-index","0");
	});

	$('.q_nav_ul li:nth-child(4)').mouseover(function(){	
		$(".q_nav_ul li:nth-child(4)").css("transform","scale(1.3)");
	});
    $('.q_nav_ul li:nth-child(4)').mouseleave(function(){
		$(".q_nav_ul li:nth-child(4)").css("transform","scale(1.0)");
        $(".q_nav_ul li:nth-child(4)").css("z-index","0");
	});

	$('.q_nav_ul li:nth-child(5)').mouseover(function(){	
		$(".q_nav_ul li:nth-child(5)").css("transform","scale(1.3)");
	});
    $('.q_nav_ul li:nth-child(5)').mouseleave(function(){
		$(".q_nav_ul li:nth-child(5)").css("transform","scale(1.0)");
        $(".q_nav_ul li:nth-child(5)").css("z-index","0");
	});
  