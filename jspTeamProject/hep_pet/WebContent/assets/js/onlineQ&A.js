$(".nav_header_li").hover(function(){
    if($(".nav_sub_header").is(":visible")){
        $(".nav_sub_header").css("display","none");
        $(".heaver_nav").css("background-color","rgba(0, 0, 0, 0)" );
    }
    else{
        $(".nav_sub_header").css("display","block");
        $(".heaver_nav").css("background-color","rgba(255,255,255,0.5)" );
    }
})

// 위는 네비바 왔다리갔다리


$(window).on("wheel", function (event){
   
    console.log(event.originalEvent.deltaY);
  
    if (event.originalEvent.deltaY < 0) {
        $(".header_flex").css("display","flex");
     
    }
    else {
        $(".header_flex").css("display","none");
    }
  });



var form = document.inputForm;

function check(){
    if(!form.userName.value){
        document.getElementById("nameCheck").innerHTML = "이름을 입력해주세요.";
        form.userName.focus();
        return;
    }

    if(!form.userEmail.value){
        alert("이메일을 입력해주세요.")
        form.userEmail.focus();
        return;
    }

    if(!form.userContent.value){
        alert("문의 내용을 입력해주세요.")
        form.userContent.focus();
        return;
    }
}
