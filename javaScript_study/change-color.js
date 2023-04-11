let text = document.getElementById("text");
text.onclick = function(){
    text.style.fontSize = 20;
    text.style.backgroundColor = 'yellow';
    text.style.color="red";
    let number=100;
    alert(  number +" 클릭을 하셨습니다~~"); 
    console.log(number+"콘솔창에 출력하기"); //웹페이지에 보이지 않고 f12 콘솔창에서 보인다
}

let t1 = document.getElementById("text1");
t1.onclick = function(){
    let name="홍길동";
    let result = confirm( name + " 자바스크립트를 클릭하셨습니다!! ");
    //확인 - true, 취소 - false
    if( result ) {
        name = "정현희";
        alert( name );

        for(let i=0;i<10;i++){
            console.log(name+i);
        }
        
    }else {
        alert( name );
    }
}

let t2 = document.querySelector("#text2");
t2.onclick = function(){
    let name = prompt("이름을 입력해 주세요");
    let kor = prompt("국어점수을 입력해 주세요",100);
    let mat = prompt("수학점수을 입력해 주세요", 100);
    let total = Number(kor) + Number(mat); //"100" --> 100 "80"--> 80
    let avg = total/2;
    // 출력하기 이름 : 홍길동  국어 :  100 수학 : 80 합계 180 평균 : 90
    alert("이름 : " + name + " 국어 " + kor + " 수학" + mat  + " 총합" + total + " 평균 " + avg);
    //결과를 웹브라우저에 출력하기 document.write("<p>내용</p>")
    document.write("<p>이름 : " + name + " 국어 " + kor + " 수학" + mat  + " 총합" + total + "평균 " + avg+"</p>");

}

let goo=document.querySelector("#ko99");
goo.onclick = function(){
    let i=prompt("알고싶은 구구단 시작은?");
    let i2=prompt("알고싶은 구구단 끝은?");
    //3입력후 5입력->3단부터 5단까지
    //프롬프트 두번 넣어서 짠다
    for(let k=i;k<=i2;k++){}    
    for(let j=1;j<10;j++){
            num=k*j;
            document.write("<p>"+k+"X"+j+"="+num+"</p>");
            console.log(i+"X"+j+"="+num);
        }
    }


let ageCalc = document.getElementById("ageCalc");
ageCalc.onclick = function(){
  //현재 년도를 구하는 함수 찾기
  let now = new Date();
  
    let currentYear = now.getFullYear();
    console.log(now+" "+currentYear);
    let birthYear=prompt("태어난 연도를 입력하세요");
    let age = currentYear -Number(birthYear)+1;
    confirm("당신의 나이는 "+age);
    document.write("당신의 나이는 "+age+"입니다");
}

var sw=document.getElementById("switchcase");
sw.onclick = function(){
let input =prompt("번호선택");

switch(input) {
case "1": document.write("305") ; break;
case "2": document.write("307") ; break;
case "3": document.write("309") ; break;
default: document.write("잘못입력") ;
}  

}
var sw1=sw;

let area=document.getElementById("area");
area.onclick = function(){
   let conok=true;
   while(conok){
    let p = Number(prompt("입장객수"));
    let pp=Number(prompt("한줄에 앉을 수 있는 사람 수"));
    let c= p/pp;
    let c1=p%pp;
    if(c1>0)c=c+1;
    document.write(c+"줄이 필요합니다");
    let yn=prompt("계속 하시겠?");
    if(yn=="n") conok=false;
   }
}

let hoisting=document.getElementById("hoisting");
hoisting.onclick=function(){
  
    console.log(a);
    
}
var a=100;

    

