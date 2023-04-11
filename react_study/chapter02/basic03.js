//디폴드값 설정
//화살표함수
const sayHello=name=> console.log(name);
sayHello("dfdssf");
sayHello("dfd",10);//dfd만 나온다
sayHello(120,"fses"); //120이 나온다
//화살표함수에 디폴트값 넣기
const sayHello1=(name1="게스트") => console.log(name1);
sayHello1();//게스트
sayHello1("dfd",10);//dfd만 나온다
sayHello1(120,"fses"); //120이 나온다

const myProfile01= {
    age:24,
}
//객체분할대입
const{name12="ghd",age}=myProfile01;
console.log(`${name12} ${age}`); //ghd 24

const {name13 ="dl",phone="1111",age2}=myProfile01;
console.log(`${name13} ${phone} ${age2}`);
myProfile01.name13="chl"
myProfile01.age2=30;
console.log(`${name13}${age2}`);


//배열 분할 대입
const arr1 = [1,2,3];
const [kor,eng=100,mat,sci=80]=arr1;   //eng=100 : 안들어오면 100, 아니면 입력한대로 출력됨
console.log(kor,eng,mat.sci); //새로운 요소 추가 가능

//배열 안에 요소를 추가하고 싶다
arr1[3]=4;
console.log(arr1);
