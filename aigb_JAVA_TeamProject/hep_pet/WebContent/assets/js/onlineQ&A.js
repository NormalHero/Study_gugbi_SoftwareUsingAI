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
