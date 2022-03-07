/**
 * 
 */
//유효성 검사
//아직 복붙만 해놓은 상태
function checks(){ 
	var getMail = RegExp(/^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/); 
	var getCheck= RegExp(/^[a-zA-Z0-9]{4,12}$/); 
	var getName= RegExp(/^[가-힣]+$/); 
	var fmt = RegExp(/^\d{6}[1234]\d{6}$/); //형식 설정 
	var buf = new Array(13); //주민등록번호 배열 //아이디 공백 확인 if($("#id").val() == ""){ alert("아이디 입력바람"); $("#id").focus(); return false; } //아이디 유효성검사 if(!getCheck.test($("#id").val())){ alert("형식에 맞게 입력해주세요"); $("#id").val(""); $("#id").focus(); return false; } //비밀번호 공백 확인 if($("#password").val() == ""){ alert("패스워드 입력바람"); $("#password").focus(); return false; } //아이디 비밀번호 같음 확인 if($("#id").val() == $("#password").val()){ alert("아이디와 비밀번호가 같습니다"); $("#password").val(""); $("#password").focus(); return false; } //비밀번호 유효성검사 if(!getCheck.test($("#password").val())){ alert("형식에 맞게 입력해주세요"); $("#password").val(""); $("#password").focus(); return false; } //비밀번호 확인란 공백 확인 if($("#password_check").val() == ""){ alert("패스워드 확인란을 입력해주세요"); $("#password_check").focus(); return false; } //비밀번호 서로확인 if($("#password").val() != $("#password_check").val()){ alert("비밀번호가 상이합니다"); $("#password").val(""); $("#password_check").val(""); $("#password").focus(); return false; } //이메일 공백 확인 if($("#mail").val() == ""){ alert("이메일을 입력해주세요"); $("#mail").focus(); return false; } //이메일 유효성 검사 if(!getMail.test($("#mail").val())){ alert("이메일형식에 맞게 입력해주세요") $("#mail").val(""); $("#mail").focus(); return false; } //이름 공백 검사 if($("#name").val() == ""){ alert("이름을 입력해주세요"); $("#name").focus(); return false; } //이름 유효성 검사 if(!getCheck.test($("#name").val())){ alert("이름형식에 맞게 입력해주세요") $("#name").val(""); $("#name").focus(); return false; }
}

