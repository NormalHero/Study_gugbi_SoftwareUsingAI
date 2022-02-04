
    const insert = document.querySelector("input#insert");
    const btn = document.querySelector("input#btn");
    btn.addEventListener('click',function(){
        const resultP = document.querySelector("div#result p");
        const insert = document.querySelector("input#insert").value;
        if(!isNaN(insert)){

            resultP.innerText = changeToHangle(insert);
        }else{
            resultP.innerText = "숫자만 입력해주세요.";
        }
    })

    function changeToHangle(number){
    var hangle = "영일이삼사오육칠팔구";
    var result = "";
    number = number.trim();

    for(let i in number){
        if(number.charAt(i) =="."){
            result += "점";
        }else{
        result += hangle[number.charAt(i)];
        }
    }
    return result;
}