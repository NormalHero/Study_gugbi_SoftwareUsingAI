// 프로토 타입
// new 뒤에 나오는 생성자를 자바스크립트에서는 프로토타입이라고 부른다.
// 프로토타입은 함수로 선언하여 사용한다.

const { log } = require("console");

// 프로토타입은 대문자로 시작 =>(자바 class)
function User(id, pw, name, age, intro){
    this.id = id; 
    this.pw = pw;
    this.name = name;
    this.age = age || 1;

    // new 사용시 아래처럼 사용하게 한다. 
    this.intro = function(){
       with(console){
           log(this.id);
           log(this.pw);
           log(this.name);
           log(this.age);
       }
    };

}


park = new User('park1234','1234','박민수',20); 
hong = new User('hong1234','1234','홍길동'); 

console.log(park);
console.log(JSON.stringify(park));

park.intro = intro;


function intro(){
    console.log("자기소개");
}
park.intro();
hong.intro();