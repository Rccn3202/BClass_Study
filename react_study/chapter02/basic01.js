//변수 var은 덮어쓸 수 있다
var var1="var 변수";
console.log(var1);

var1="var 변수 덮어쓰기";
console.log(var1);

var var1="다시 선언함";
console.log(var1)

//let
let var2=100;
console.log(var2);

var2 +=300;
console.log(var2);

// let var2=600; 에러남

//const
const var3=2.5;
console.log(var3+3.1);

//덮어쓰기 안됨 var3 *=2.7; //2.5*2.7
//재선언 안됨 const car3=10.90;
console.log(var3);

//오브젝트 타입의 종류 및 형식
const obj1 = { } //자바의 객체: class 등등 , js의 객체 : { }
const arr1=[ ]; //[ ] : 배열
const function1 = () => {} //메소드 :(자바는 밖에서 쓸 수 없음) / js는 밖에서 쓸 수 있음(함수)

//예시
const obj2={
    name:"홍길동",
    age:24,
    fun2:function(){
        console.log(this.name);
    },
    fun3:()=>{
        this.age=this.age+5; //const는 내부에서 바꿀 수 없다 ->그냥 24나옴
    }
}
console.log(obj2.name,obj2.age) //함수 밖에서 쓰려면 객체명.함수명(obj2.name)
obj2.fun2();
obj2.fun3();
console.log(obj2.name,obj2.age);

//객체 밖에서 바꿀 수 있다
obj2.name="이순신";
obj2.age=obj2.age+5;
console.log(obj2.name,obj2.age)

//객체 밖에서 추가할 수 있다
obj2.address="경기도 하남시";
console.log(obj2.name,obj2.age,obj2.address);


let obj3={
    phone:"0000000",
    email:"aa@aaa",
    pPhone:()=>{
        console.log(this.phone);
    },
    mEmail:()=>{
        email="bb@bbb";
    }
}
//출력해보기
console.log(obj3.phone,obj3.email);
//필드 바꿔보기
obj3.phone="111111"
obj3.email="bb@bbb"
//함수를 호출해보기
obj3.pPhone();
obj3.mEmail();
console.log(obj3.phone,obj3.email);

//배열
const arr2=["d","c"];
console.log(arr2);
console.log(arr2.length);
console.log(arr2[1]);
console.log(arr2[2]);//[2]인덱스 비어있음->undefined라고 나온다

//자바와 다르게 이미 만들어진 배열에 추가 가능
arr2.push(1000);
console.log(arr2); //자바 arrayList비슷

//배열값 변경
arr2[1]="e";
console.log(arr2);
