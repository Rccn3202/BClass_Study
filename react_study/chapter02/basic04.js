// //스프레드 구문 ...
// //1. 요수전개
// const arr1=[1,2];
// console.log(arr1);
// console.log(...arr1); //내부요소를 순차적으로 전개할 수 있다

// const obj1={
//     name:"김",
//     age:24
// };
// console.log(obj1.name,obj1.age);

// const summaryFng =(num1,num2) =?console.log(num1+num2);//화살표함수 정의
// summaryFng(arr1[0],arr[1]);//함수호출
// summaryFng(...arr1);//1 2 :요소의 갯수와 상관없이 모든 요소를 전달할 수 있다.

// const arr2=["rla",24,100];
// console.log(...arr2);
// //함수 만들고
// //함수 호출해서 출력: ghd은 24살 100점
// const printFunc=(name,age,score)=>console.log(`${name} ${age} ${score}`);
    
// printFunc(arr2[0],arr2[1],arr2[2]);
// printFunc(...arr2);   

// //2.요소모으기
// const arr3=[1,2,3,4,5];
// //배열 분할대입
// const[num1,num2, ...arr4]=arr3;
// console.log(num1,num2,arr4); //12 [3,4,5]
// const arr5=["김",24,100,80,90,65];
// //점수를 jumsu배열에 만들어 두고 합계를 구하기
// //출력은 홍길동 24살 합계
// const [name6,age6, ...jumsu] =arr6;

//함수정의 방법1
// const jumsusum=(arr)=>{
//     let sum=0;
//     for(let i=0;i<arr.length;i++){
// sum+=arr[i];
//     }
//     return sum;
// };

// //함수 정의
// const printfunc5=(name6,age6,jumsu)=>
// console.log(`${arr3.name6} ${arr3.age6} ${jumsusum(arr3.jumsu)}`)

// //함수호출
// printfunc5(arr3,age6,jumsu);

//방법2
// const jumsusum=(v1,v2,v3,v4,v5)=>{
//     return v1=
//     let sum=0;
//     for(let i=0;i<arr.length;i++){ 
// sum+=arr[i];
//     }
//     return sum;
// };

// //함수 정의
// const printfunc5=(name6,age6,jumsu)=>
// console.log(`${arr3.name6} ${arr3.age6} ${jumsusum(...jumsu)}`)

// //함수호출
// printfunc5(arr3,age6,jumsu);

//수업예제
//score 배열에 점수를 만들어 합계를 구하기
const arr1 = ["홍길동", 24, 100, 80, 90, 65];
const [name10, age10, ...score] = arr10;
const Func3 = (n2, n3, n4, n5) => console.log(n2 + n3 + n4 + n5);
Func3(...score); //335
console.log("모은거" + " " + score); //배열로 안모아지는 이유?

//합계 함수 만들기
const SumFunc = (arr) => {
  console.log(arr + " " + arr.lenght);
  let sum = 0;
  for (let i = 0; i < arr.lenght; i++) {
    console.log(i) + "테스트";
    sum += arr[i];
  }
  return sum;
};
const printSum = (name10, age10, score) =>
  console.log(`${name10}은 ${age10}이고 합계는 ${SumFunc(score)}입니다.`);

printSum(name10, age10, score);

//3.요소 복사와 결합
const arr7=[10,20];
const arr8=[30,40];
const arr9=[...arr7];
console.log(arr9);

const arr10=[...arr7, ...arr8]//[10,20,30,40]
console.log(arr10);

const obj6={val1:10,val2:20};
const obj7={val3:30,val4:40};
const obj8={...obj6};//obj6을 풀어서 {}안에 감쌌다
console.log(obj9);
const obj10={...obj6,...obj7};//obj6과 obj7을 풀어서 {}안에 감쌌다
console.log(obj10);



//4. =을 써서 복사하지 않는 이유는 주소가 복사되기 때문ㅇ ㅔ중간에 바꾸면 연결되어서 값이 같이 바뀐다
//얕은 복사 - 주소만 복사가 된다
const arr11=[10,20];
const arr22=arr11;
console.log(arr12);
console.log(arr11);

arr11[0]=100;
console.log(arr12); //[100,20]
console.log(arr11); //[100,20]

//깊은 복사: 새로운 배열이 만들어져서 값이 복사된다
const arr13=[90,100];
const arr14=[...arr13];
arr11[0]=500; //[500,100]
console.log(arr11);//500,100
console.log(arr13);//90,100





