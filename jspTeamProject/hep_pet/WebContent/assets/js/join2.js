
		
	
$(document).ready(function(){
		var qwe= /^([a-zA-Z0-9ㄱ-ㅎ|ㅏ-ㅣ|가-힣]).{3,10}$/;

	 var idReg = /^[a-z]+[a-z0-9]{5,19}$/g;
		 var reg = /^[가-힣]{2,4}$/;
	 var pass =/^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$/;
	 var emailRule = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
	 var phoneRule = /^\d{3}\d{3,4}\d{4}$/;
	 var id = $('#userid');
	 var name = $('#username');
	 var pw =$('#userpw');
	 var repw =$('#reuserpw');
	 var nick =$('#usernick');
	 var email =$('#useremail');
	 var phone  =$('#userphone');
	 
	 //아이디
$('#userid').on("keyup" ,function(event) {
	
	if(!idReg.test($('#userid').val() ) ) {
        $('#list1').html("<span class='none_text'>아이디는 영문자로 시작하는 6~20자 영문자 또는 숫자이어야 합니다.  </span>" );
        $('#list1').css('font-weight','bold');
        $('#list1').css('color','red');
          } else {
    	$('#list1').html("<span class='none_text'> 사용가능한 아이디 입니다.</span>" );
    	$('#list1').css('color','blue');
    }
});
			//이름
$(name).on("keyup" ,function(event) {
	
	if(!reg.test($(name).val() ) ) {
        $('#list2').html("<span class='none_text'> 한글만 입력해주세요.  </span>" );
        $('#list2').css('font-weight','bold');
        $('#list1').css('color','red');
          } else {
    	$('#list2').html("<span class='none_text'> 확인되었습니다.</span>" );
    	$('#list2').css('color','blue');
    }
});
	
$(pw).on("keyup" ,function(event) {
	
	if(!pass.test($(pw).val() ) ) {
        $('#list3').html("<span class='none_text'> 비밀번호는 문자 숫자를 포함해 8자 이상입력해주세요  </span>" );
        $('#list3').css('font-weight','bold');
        $('#list3').css('color','red');
          } else {
    	$('#list3').html("<span class='none_text'> 사용가능한 비밀번호입니다.</span>" );
    	$('#list3').css('color','blue');
    }});

$(repw).on("keyup" ,function(event) {
	
	if($(pw).val()!=$(repw).val()){
        $('#list4').html("<span class='none_text'>비밀번호가 일치하지 않음  </span>" );
        $('#list4').css('font-weight','bold');
        $('#list4').css('color','red');
          } else {
    	$('#list4').html("<span class='none_text'> 비밀번호가 일치합니다.</span>" );
    	$('#list4').css('color','blue');
    }});

$(nick).on("keyup" ,function(event) {
	
	if(!qwe.test( $(nick).val() ) ) {
        $('#list5').html("<span class='none_text'> 4자이상 입력해주세요  </span>" );
        $('#list5').css('font-weight','bold');
        $('#list5').css('color','red');
          } else {
    	$('#list5').html("<span class='none_text'> 사용가능한 닉네임입니다.</span>" ); 
    	$('#list5').css('color','blue');
    }});
$(email).on("keyup" ,function(event) {
	
	if(!emailRule.test( $(email).val() ) ) {
        $('#list6').html("<span class='none_text'> 이메일을 @붙여서 입력해주세요  </span>" );
        $('#list6').css('font-weight','bold');
        $('#list6').css('color','red');
          } else {
    	$('#list6').html("<span class='none_text'> 사용가능한 이메일입니다.</span>" );
    	$('#list6').css('color','blue');
    }});
$(phone).on("keyup" ,function(event) {
	
	if(!phoneRule.test( $(phone).val() ) ) {
        $('#list7').html("<span class='none_text'> 하이픈(-)없이 입력해주세요  </span>" );
        $('#list7').css('font-weight','bold');
        $('#list7').css('color','red');
          } else {
    	$('#list7').html("<span class='none_text'> 사용가능한 번호입니다.</span>" );
    	$('#list7').css('color','blue');
    }});

});











function checkjoin() {
	
	 var idReg = /^[a-z]+[a-z0-9]{5,19}$/g;
	 var reg = /^[가-힣]{2,4}$/;
	 var pass =/^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$/;
	 var emailRule = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
	 var phoneRule = /^\d{3}\d{3,4}\d{4}$/;


	 
	 var id = $('#userid');
	 var name = $('#username');
	 var pw =$('#userpw');
	 var repw =$('#reuserpw');
	 var nick =$('#usernick');
	 var email =$('#useremail');
	 var phone  =$('#userphone');
	 
	 
	 
	 
		if(!idReg.test( $(id).val() ) ) {
         alert("아이디는 영문자로 시작하는 6~20자 영문자 또는 숫자이어야 합니다.");
         $(id).focus();
         return false;
	 	}

		if(!reg.test( $(name).val() ) ) {
	         alert("이름을 제대로 입력해주세요");
	         $(name).focus();
	         return false;
		 	}
		if(!pass.test( $(pw).val() ) ) {
	         alert("비밀번호는 문자 숫자를 포함해 8자 이상입력해주세요");
	         $(pw).focus();
	         return false;
		 	}

        if($(pw).val()!=$(repw).val()){
            alert("비밀번호가 일치하지 않음");
            $(repw).focus();
            return false;

        }
        
        if($(nick).val() == ""){
            alert("닉네임을 입력해주세요");
            $(nick).focus();
            return false;

        }
    	if(!emailRule.test( $(email).val() ) ) {
	         alert("이메일을 확인해주세요");
	         $(email).focus();
	         return false;
		 	}
    	
    	
    	if(!phoneRule.test( $(phone).val() ) ) {
	         alert("핸드폰번호를 확인해주세요");
	         $(phone).focus();
	         return false;
		 	}
    	  alert("회원가입 완료!");
        document.join_form.submit();{

        }

    }

