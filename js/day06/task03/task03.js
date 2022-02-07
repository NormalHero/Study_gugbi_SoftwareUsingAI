const carPw = prompt("자동차 초기 비밀번호 입력");
console.log(carPw);
var chance = 0;
var power = false;
var police = false;


const btnOn = document.querySelector("input#btnOn");
btnOn.addEventListener('click',function(){
    
    if(police == true){
        // 경찰이 출동했다면 버튼을 클릭해도 아무 작업도 일어나지 않게 한다 
    }else if(carPw == ckPwInput() && power == false){

        power = true;
        changeImg("img02.gif");
        changeInfo("시동 켜짐");
        chance = 0;
    }else if(carPw == ckPwInput() && power == true){
        changeInfo("이미 켜져 있습니다.");
    } else{
    pwWrong()
    }
})

const btnOff =document.querySelector("input#btnOff");
btnOff.addEventListener('click',function(){
    if(police == true){
        
    }else if(carPw == ckPwInput() && power == true){

        power = false;
        changeImg("img04.gif");
        changeInfo("시동 꺼짐");
        chance = 0;
    }else if(carPw == ckPwInput() && power == false){
        changeInfo("이미 꺼져 있습니다.");
    }else{
    pwWrong()
    }

})

const btnReset = document.querySelector("input#btnReset");
btnReset.addEventListener('click',function(){
        power = false;
        police = false;
        chance = 0; 
        changeImg("img01.png");
        changeInfo("현재 상태 표시");
})




function ckPwInput(){
    const pwInput = document.getElementById("pwInput");
    return pwInput.value;
}
function changeImg(uri){
    const divImg = document.querySelector("div#img");
    divImg.style.backgroundImage = "url('"+uri+"')";  
}
function changeInfo(info){
    const InfoP = document.querySelector("div.fildWrap p");
    InfoP.innerText = info;
}
function pwWrong (){
    ++chance;
    if(chance >= 5){
        police = true;
        changeInfo("경찰 출동!!");
        changeImg("img03.png");
    }else{
    changeInfo("비밀번호 오류: "+chance+"회" );
    }
}