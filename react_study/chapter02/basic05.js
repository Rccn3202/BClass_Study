//2.7 객체 생략 표기
const name="김";
const age=24;

//형식
// const 객체명={
//     속성명(또는 필드명): 값
// }
const user={ //name=name, 대신 name, 라고 쓸 수 있다
    name,
    age,
}
console.log(user.name,user.age); //객체명, 필드명(속성명)

//2.8 map, filter
//map - 자바식 forEach() 스트림방식
//const 새로운배열명 = 배열명.map()
const nameArr1=["a","b","c"];
const nameArr2=nameArr1.map((name)=>{return name+"님"}); //+"님"이 일괄적용됨
const nameArr3=nameArr1.map(name=>`${name} 귀하`);

console.log(nameArr1);
console.log(nameArr2); //~님
console.log(nameArr3); //~귀하

const ageArr1 = [1,2,3,4];
//나이가 2 미만은 미성년, 2 이상은 성년이라고 출력
console.log(ageArr1);
const ageArr2=ageArr1.map(age=>(age<2) ? "미성년":"성년")
 console.log(ageArr1);
 console.log(ageArr2);

 //index 다루기
 //출력결과는 1번째는 미성년, 2번째는 성년, 3번째는 성년, 4번째는 성년
 ageArr2.map((age,index)=>console.log(`${index+1}번째는 ${age}이다`))


 const nameArr4=["a","b","c"];
 const ageArr4=[24,14,15];
 
 //홍길동은 24살 성년, 이순신은 
 ageArr4.map((age,index)=>{
    const adult=(age)=>(age<20) ? "미":"성" ;
    console.log(`${nameArr4[index]}은 ${age}살 ${adult(age)}이다`)
 });


 //filter:조건이 참이면 배열이 만들어짐
const intArr1=[1,2,3,4,5,6,7,8,9,10];
//짝수만 evenArr1로 만들자
const evenArr1=intArr1.filter((a)=>{return a%2===0});  
//0=="0" : true 0==="0" : false (0===0)
//==는 값이 같음, ===값과 자료형 모두 같음
console.log(evenArr1);
const evenAr1=intArr1.filter(a=> a%2===0);
console.log(evenAr1);
//홀수만
const oddArr1=intArr1.filter(a=> a%2!==0);
console.log(oddArr1);




const personName=["a","b","c"];
const gender=[true,true,false];
const age1=[10,24,23];

//남자,20이상이면 신검대상
//최종적으로 배열에 담기는 내용은 이름
//형식 : const namee=personName.filter(남자만 통과).filger(나이가 20이상);
const namee=personName.filter((name,index)=>gender[index])
                        .filter((name,index) => age1[index]>=20);
console.log(namee);
console.log(...namee+"은 신검대상");

const schoolName=["e","r","t"];
const leverl=[1,2,2];



//김은 2등급이다. 갈 수 있는 곳은?
const student={
    name:"김",
    grade:2,
    level:2
}
const ok1=schoolName.filter((schoolName,index)=>leverl[index]===student.grade); 
console.log(ok1+"지원가능");

const ok=age1.filter((age,index)=>{
    if(gender[index] && age>=20)
    return personName[index]+" 신검대상자입니다";
});
console.log(ok);



const findIndexFunc = (n) =>{ //각각 배열을 연결해주기 위해서 이름배열과 비교해서 일치하는 인덱스를 찾아줌 
    let findIndex;
    for(i=0;i<personName.length;i++){
        if(n==personName[i]) findIndex=i;
    }
    return findIndex;
}

const mappingGender = (n) => gender[n]; //젠더배열에 받아온 인덱스를 넣은 값을 리턴함
const mappingAge = (n) => age1[n]; //나이배열에 받아온 인덱스를 넣은 값을 리턴함
const findMember = personName.filter(n=>mappingGender(findIndexFunc(n))).filter(n=>mappingAge(findIndexFunc(n))>20);
console.log("군대가 "+ findMember+"님을 부릅니다.");

