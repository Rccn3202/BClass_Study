//기존 문자열과 변수 결합 방법
const name="김";
const age=24;
const message="내 이름은 "+name+", 나이는 "+age+"입니다";
console.log(message);

//템플릿 문자열 이용
const message2=`내 이름은 ${name}, 나이는 ${age}입니다`
console.log(message2);

//내 이름은 박, 2005년10월10일생이야. 나이는 24이야 .내년은 25살이 돼
const name1="박";
const year=2005;
const month=10;
const day=10;
const age1=2023-2005;
const age2=()=>{return age1+1}; //함수호출방법 :${age2()} 이렇게 씀

const message3=`내 이름은 ${name1} 이고, ${year}년 ${month}월 ${day}일 생이야. 나이는 ${age1}이야. 내년이면 ${age2()}살이 돼`
console.log(message3);

//화살표함수
//함수 정의방법1 기존 함수1 : function 함수명(인수 또는 매개변수) {처리할 내용}
function func1(value){
return value;
}
console.log(func1("홍길동"));
console.log(func1(100));

//"홍길동",100 을 인수로 전달
function func2(name,score){
    return `${name}이고 ${score}점`;
}
//함수호출
const result = func2("홍",100);
console.log(result);
const aa=func2("이",80);
console.log(aa);

//함수정의 방법2 기존함수2 : 함수명 생략
//const 변수선언 = function (인수) {처리할 내용};
const func3 = function (name) {  return name; } 
func3("홍길동");



//함수정의 방법3 :function을 생략하고 화살표함수 정의
//const 변수선언 = (인수)=>{처리할 내용}
const func4=(name)=>{return name};
console.log(func4("444"));
//(인수1) 일 때 ()생략
const func5=age=>{return age};
console.log(func5(24));
//반환할 문장이 1행이면 {} return 생략
const func6=(v1, v2)=>v1+v2;
console.log(func6(100,200));
//여러값을 반환할 때는 () 단일행처럼 만들어서 반환 /중요!!!!!!
const func7 = (v1,v2,v3) =>({
    name: v1,
    age:v2,
    phone:v3
})
console.log(func7("박",24,"222222"));
let result7=func7("박",24,"222222");
console.log(result7.name);

//인수로 2개를 넣어서 필드에 담고 2개 모두 리턴 받으세요
//gender:true, point:100
const func8=(v1,v2) =>({
    gender:v1,
    point:v2
});
console.log(func8(true,100));
let result8=func8(true,100);
console.log(`${result8.gender} , ${result8.point}`);

//분할대입
const myProfile ={ //객체
name03:"박",
age03:44
}
const{name03,age03}=myProfile; //필드 순서관계 없고 하나만 추출해도 된다
//원래는 console.log(`${myProfile.name03} ${myProfile.age03} 이렇게 써야함
console.log(`${name03}`);
//없거나 이름이 다르면 대임이 안된다

//추출한 속성에 별명 지정
//객체 선언
const myProfile2 = {
    name02:"박",
    email:"aa@aaaaa",
    phone:"00000"
}
//분할X 이메일 출력
console.log(`분할X : ${myProfile2.email}`);
//객체분할대입. 이름,전화번호
const{name02, phone}=myProfile2;
console.log(`객체분할대입 : ${name02}, ${phone}`);
//별명 붙이기
const{name02:newname, phone:newphone} = myProfile2;
console.log(`별명붙여서 출력 : ${newname}, ${newphone}`);
console.log(`그냥출력 출력 : ${name02}, ${phone}`);

//배열
const myProfile3=["김",24,100];
//배열 분할 대입
const [name00,age00,score00] = myProfile3;
//출력하기
console.log(`이름은 ${name00}이고 나이는 ${age00}이고 점수는 ${score00}`);
//배열 분할 대입-일부추출
const [name10,score10]=myProfile3;
console.log(`이름은 ${name00}이고 점수는 ${score00}`);
