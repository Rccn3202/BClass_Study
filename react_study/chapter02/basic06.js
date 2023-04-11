//삼항연산자
const var1=(1>0) ? "참":"거짓";
console.log(var1);

console.log("----------------------")

const printFormattedNum = (num)=>{
    const formattedNum = (typeof num === "number") ? num.toLocaleString():"숫자를 입력";
    //toLocaleString()은 숫자를 세 자리씩 콤마로 구분해서 변환
    console.log(formattedNum);
};

//함수 호출
printFormattedNum(1234567000);
printFormattedNum("김김김"); //숫자가 아니므로 "숫자를 입력"이라고 나온다.

console.log("----------------------")

//if문 대신 삼항연산자를 이용해서 두 인수의 합이 100을 넘는지 판정
const checkSumOver100 = (num1, num2) => {
    return (num1+num2>100) ? "100 넘음" : "허용범위"
}
console.log(checkSumOver100(50,40));

console.log("--문제풀기---------------")

//입력하면 중간값 출력 (15,5,20)
//최대값 최소값 빼기??????? 이걸 삼항으로
//경우의 수 따지기 1.n1이 중간값일 경우 2. n2가 중간값일 경우...
/*const middleNum=(num3,num4,num5) => {
    if(Math.max)
    
}
const max=Math.max(15,5,20);
const min=Math.min(15,5,20);

console.log(checkSumOver100(15,5,20));
*/

console.log("----------------------")
//&& || 의미
//||연산은 처음에 조건이 true이면 그것을 반환, 거짓이면 계속 뒤로 가면서 true 찾기
const num=null; //null, undefined false
const fee=num || "금액을 설정하지 않았습니다";
console.log(fee);

const num1=100;
const fee1=num1 || "금액을 설정하지 않았습니다";
console.log(fee1);  //100 (두 플래그 중 어느 하나는 참이다)

//&&는 하나라도 false이면 전체 false이므로 끝까지 다 검색한다
const num2 = 100;
const fee2=num2 && null&& "무언가가 설정되었음";   
console.log(fee2);

const fee3 = null || undefined||100;
console.log(fee3); //100
const fee4 = null && undefined && 100;
console.log(fee4); //null

console.log("----------------------")
