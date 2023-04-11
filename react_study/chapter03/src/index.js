//자바스크립트를 이용해서 HTML을 제어

//타이틀 이름으로 불러오기
const title = document.getElementById("title");
console.log("title");

//클래스 네임으로 얻어오기
const container01=document.getElementsByClassName("container")
console.log("container01");

//
const title02 = document.querySelector("#title");
console.log("title02");

//제일 처음 클래스 container만 선택해준다
const container02= document.querySelector(".container");
console.log(container02);
//<h1>태그를 선택해준다
const h1Qs=document.querySelector("h1");
console.log(h1Qs);
//p태그를 선택한다-맨 위의 하나만 선택됨
const p1Qs=document.querySelector("p");
console.log(p1Qs);
//모든 .container 선택 /배열결과를 리턴 /영
const container03=document.querySelectorAll(".container");
console.log(container03);
console.log(container03[1]);
console.log(container03[2].innerHTML);
container03[2].innerHTML = "<h3> 이걸로 수정해</h3>"
console.log(container03[2].innerHTML);


//3.2 DOM 작성,삭제,추가

//작성
//태그 만들기1. 태그명 있는 것 만든다 h1,p
const divE1 = document.createElement("div");
console.log(divE1);
const imgE1 = document.createElement("img");
console.log(imgE1);

//태그 만들기2. 태그명 없는 것 만든다 <abc> <name>
const d = document.createElement("abc");
console.log(d);
const b = document.createElement("name");
console.log(b);

//div 속에 p태그 넣기
const divE3=document.createElement("div");
const pE3=document.createElement("p");
const h3E3=document.createElement("h3");
divE3.appendChild(pE3);
divE3.appendChild(h3E3);
console.log(divE3);

//추가
//div 속에 table, tavle속에 tr, tr 속에 td 태그 넣기
const divE4=document.createElement("div");
const tableE4=document.createElement("table");
const trE4=document.createElement("tr");
const tdE3=document.createElement("td");
const tdE4=document.createElement("td");
divE4.appendChild(tableE4);
tableE4.appendChild(trE4);
trE4.appendChild(tdE3);
trE4.appendChild(tdE4);
console.log(divE4);

//삭제-지우려면 자식부터 지워야한다
//형식: 부모객체.removeChild(자신)

//divE3 삭제하기
//1. body선택
const bodyE1=document.querySelector("body");
//* 2.삭제한다
//bodyR1.removeChild(divE3); //에러발생 : DOMException. 지우려는 것 안에 다른 자식 엘리먼트(요소)있어서 안됨
//2. 자식 삭제한다
divE3.removeChild(h3E3);
divE3.removeChild(pE3);
//3. 자신을 삭제;
bodyE1.removeChild(divE3);





