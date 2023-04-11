//연습문제 1
/*
App.js에
-Header.jsx - 제목과 메뉴를 넣는 화면
-Content.jsx - 내용이 들어 있는
-Advertisement.jsx - 광고가 들어 있는
-News.jsx - 뉴스가 들어있는
-Footer.jsx - 웹페이지 바닥글이 있는
위와 같이 컴포넌트화 해서 끼워넣어보기
*/

//방법 1
/*
보내는 파일에서 export로 보내면  :  import {} from "패키지명/파일명"
예) export const News =()=>{ } :  import { News } from "./components/News";

보내는 파일에서 export default로 보내면 : import 파일명 from~
예) export default App; : import App from "./App"


차이점 : default는 1개의 const만 보낼 수 있다.
        여러개를 보내려면 import {react, useState} from "react"; 이런식으로 보내야 한다.

*/


//연습문제 2
/*버튼 누르면 prompt로 이름을 입력받기
이름을 p태그의 잘 지내시죠 밑에 자식으로 div태그 만들어서 추가
결과는 <p>잘 지내시죠 <div>홍길동 </></>
*/
//방법 2