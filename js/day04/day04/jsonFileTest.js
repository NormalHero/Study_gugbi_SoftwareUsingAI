let file =  require('fs');
let user = new Object;
let userJSON;

user.name = "박민수";
user.id ="park1234";
user.pw ="1234";

console.log(user);

// 스트링기파이 
userJSON = JSON.stringify(user);

// JS에서 비동기를 지향하기 때문에 비동기 방식이 파일입출력에서 defalut이다. 
// file.writeFile(경로,작성할내용, 인코딩방식, 콜백함수(에러객체))
// file.writeFile('day04/user.json',userJSON, 'UTF-8',function(e){
//     // e 오류가 있으면 true 
//     // e 오류가 없으면 false -> undefined
//     if(e){
//         // 오류 발생 시 오류 내용 출력
//         console.log(e);
//     }else{
//         console.log("파일 출력 성공!");
//     }

// });

// file.readFile(경로, 인코딩, 콜백함수(에러객체, 내용))
file.readFile('day04/user.json', 'UTF-8',function(e,data){
    let user = JSON.parse(data);
    console.log(user.name);
    console.log('아이디: %s',user.id);
    console.log(user.pw);
});





