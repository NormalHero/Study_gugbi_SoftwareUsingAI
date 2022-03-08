/**
 * 
 */

function checkId(){
	if($("#name").val() == ""){
		alert("이름을 입력해주세요."); 
		$("#name").focus(); 
		return false;
	}
	
	if($("#id_email").val() == ""){
		alert("이메일을 입력해주세요."); 
		$("#id_email").focus(); 
		return false;
	}
	findIdForm.submit();
}

function checkPw(){
	if($("#id").val() == ""){
		alert("아이디를 입력해주세요.");
		$("#id").focus();
		return false;
	}
	
	if($("#pw_email").val() == ""){
		alert("이메일을 입력해주세요.");
		$("#pw_email").focus();
		return false;
	}
	findPwForm.submit();
}