//추가 버튼 클릭 시 실행하는 함수
const onClickAdd=()=>{
    //텍스트 박스의 엘리먼트를 얻는다. -?????뭐하는거징
    const textEl=document.getElementById("add-text");

    //텍스트 박스의 값을 얻는다.
    const text=textEl.ariaValueMax;

    //텍스트 박스를 초기화한다(공백)
    textEl.value="";

    //li 태그 생성
    const li=document.createElement("li");

    //div 태그 생성   -html두고 js에서 만드는 이유는????
    const div = document.createElement("div");

    //p태그 생성(텍스트 박스의 문자 설정)
    const p = document.createElement("p");
    p.textContent=text;

    //button 태그 생성(라벨:삭제)
    const button=document.createElement("button");
    button.textContent="삭제";

}