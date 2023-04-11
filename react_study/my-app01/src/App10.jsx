// App.jsx
//    - Header.jsx - 제목과 메뉴를 넣는 화면
//    - Content.jsx - 내용이 들어 있는 화면
//       - Advertisement.jsx - 광고가 들어 있는 화면
//       - News.jsx - 뉴스가 들어 있는 화면  
//    - Footer.jsx - 웹페이지 바닥글이 있는 화면
// ​
// 위와 같이 컴포넌트화 해서 끼워 넣어 보세요
import { Header } from "./components/Header"; 
import { Footer } from "./components/Footer";
import { Content } from "./components/Content";
import { ColoredMessage } from "./components/ColoredMessage";
import { PropsEx01 } from "./components/PropsEx01";
import { PropsEx02 } from "./components/PropsEx02";


const App10 = ()=>{
  const onClickButton = ()=>{
    console.log("버튼이 눌렸어요");
    alert("버튼을 누르셨어요!!");
   }
  const onClickButton2 = ()=>{
    window.confirm(" 리액트 좀 할만 하시나요? ");
  }
  const onClickButton3 = ()=>{
    //버튼을 누루면 prompt로 이름 입력 받으세요.
    // 이름을 "<p> 잘지내시죠" 아래 자식으로  <div> 태그를 만들어서 이름 보이게 해주세요.
    // 결과는 <p> 잘지내시죠 <div> 홍길동 </div> </p>가 되게 만드시면 됩니다
    const name = prompt("이름을 입력하세요"); //이름을 입력 받는다.
    const divEl = document.createElement("div"); //div 태그를 만든다.
    const pEl = document.querySelector("p");//<p> 태그를 선택하기
    //div 태그 안에 <div> 홍길동 </div>
    divEl.textContent = name;
    //<p> 태그 아래에 <div> 태그를 붙여라
    pEl.appendChild(divEl);

 }
  const onClickButton4 = ()=>{
     // 위에 onClickButton3에서 나오는 이름을  삭제하기 
     //div 모두 선택하기 제일 아래에 있는 div 태그를 삭제하기
     const pEl = document.querySelector("p");//<p> 태그를 선택하기
     const divElAll = document.querySelectorAll("div");
     console.log( divElAll);
     if( divElAll.length > 2) {
         pEl.removeChild( divElAll[ divElAll.length - 2]);
     }
  }
  const contentStyle = {
     color: "blue",
     fontSize: "20px",
  } 
  const button2Style = {
    backgroundColor: "yellow"
  }
  const button3Style = {
    backgroundColor: "green"
  }
  const button4Style = {
    backgroundColor: "#ccc"
  }
  

   return(
    <>
      {/* { 자바스크립트 코드를 넣어주기  }  */}
      { console.log("TEST")}
      <h3  style={ { color: "red"} } > 안녕하세요! </h3>
      <p style = { contentStyle } > 잘지내셨죠? </p>

      <button onClick={ onClickButton }  style={ { backgroundColor: "red"  }   } > 버튼 </button>
      <button onClick={ onClickButton2 } style={ button2Style } > 버튼2 </button>
      <button onClick={ onClickButton3 } style={ button3Style } > 버튼3 </button>
      <button onClick={ onClickButton4 } style={ button4Style } > 삭제버튼4 </button>  
      {/* onClickButton4() (X)  함수 컴포넌트를 호출할 때 () 매개변수를 쓰지 않는다*/}
      <Header></Header>
      <Content></Content>
      <Footer></Footer>
      <ColoredMessage color="red" message="안녕 주말 잘 보냈어요?" ></ColoredMessage>
      <ColoredMessage color="green" message="주말에 공부했어요~~" ></ColoredMessage>
      <ColoredMessage color="pink" message="안녕" name="홍길동" age="24">
      </ColoredMessage>
      <PropsEx01 color="blue" word="바다"></PropsEx01> 
      <PropsEx01 color="yellow" word="나비"></PropsEx01> 
      <PropsEx01 color="green" word="나무"></PropsEx01> 
      <PropsEx01 color="red" word="장미"></PropsEx01> 
      <PropsEx02></PropsEx02>
    </>

  );
}

export default App; // import App from "./App";