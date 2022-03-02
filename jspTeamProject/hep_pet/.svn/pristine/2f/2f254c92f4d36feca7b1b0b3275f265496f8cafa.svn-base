$(".nav_header_li").hover(function(){
    if($(".nav_sub_header").is(":visible")){
        $(".nav_sub_header").css("display","none");
        $(".header_fixed").css("background-color","rgba(255,255,255,0)" );
 
    }
    else{
        $(".nav_sub_header").css("display","block");
        $(".header_fixed").css("background-color","rgba(255,255,255,0.8)" );
       
        
    }
})






// 위는 네비바 왔다리갔다리



$(window).on("wheel", function (event){

 
    if (event.originalEvent.deltaY < 0) {
        $(".header_flex").css("display","flex");
     
    }
    else {
        $(".header_flex").css("display","none");
    }
  });
