

// $(".nav_header_li").hover(function(){
//     if($(".nav_sub_header").is(":visible")){
//         $(".nav_sub_header").css("display","none");
//         $(".header_fixed").css("background-color","rgba(255,255,255,0)" );
//       $("nav_sub_header_li").css("display","none");

//     }
//     else{
//         $(".nav_sub_header").css("display","block");
//         $(".header_fixed").css("background-color","rgba(255,255,255,0.8)" );
       
        
//     }
// })
$(document).ready(function(){

	$(".nav_sub_header").hide();
	
	
	$('.nav_header').mouseover(function(){	
		$(".header_fixed").css("height","250px");
		$(".nav_header").css("height","160px");
		$('.nav_sub_header').show();
		
		
		

	});
	$('.nav_header').mouseleave(function(){
		$(".header_fixed").css("height","0px");
		$(".nav_header").css("height","50px");
		$('.nav_sub_header').hide();
		
	});
});

//
//




// 위는 네비바 왔다리갔다리



$(window).on("wheel", function (event){

 
    if (event.originalEvent.deltaY < 0) {
        $(".header_flex").css("display","flex");
     
    }
    else {
        $(".header_flex").css("display","none");
    }
  });



function modalOpen() {
    
    document.getElementById('modle_main').style.display = 'block';
    
   
  
    
 
}
function modalClose() {
    
document.getElementById('modle_main' ).style.display = 'none';
}


