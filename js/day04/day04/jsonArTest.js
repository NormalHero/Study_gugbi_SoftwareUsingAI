var file = require('fs');

train = new Array();
var hong = {name: '홍길동', age: 20, level: 1};
var lee = {name: '이순신', age: 40, level: 2};
var jang = {name: '장보고', age: 19, level: 3};

train.push(hong);
train.push(lee);
train.push(jang);

console.log(train);

var trainJSON = JSON.stringify(train);
console.log(trainJSON);

file.writeFile("day04/train.json",trainJSON,function(e){
    if(e){
        console.log(e)
    }else{
        console.log("출력성공!")
    }
})

file.readFile("day04/train.json","UTF-8",function(e,datas){
    
    let trainAr = JSON.parse(datas);
    console.log(trainAr);
    // map을 사용하여 기존에 있던 obj객체를 level프로퍼티로 변경하여 
    // forEach를 통해서 출력한다. 
    // map은 리턴으로 해주어야 한다. 
    // trainAr.map(function(v){return v = v.level}).forEach(function(v){console.log(v);});


    // i에는 in 뒤에 있는 반복자(순서가 있는)의 인덱스가 순서대로 담긴다.
    for(let i in trainAr){
        // console.log(i);
        console.log(trainAr[i].level)
    }


});