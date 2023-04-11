 // const [ 변수명, 변수를 바꿀함수명 ] = useState(초기값); //배열분할대입
import { useState } from "react";

export const UseStateEx01 = ()=>{
   const [ num, setNum ] = useState(0);
   const [ name, setName ] = useState("");

   const onClickButton = ()=>{
     console.log(" 재랜더링 합니다.");
     setNum( num + 1);
   }
   const onClickButton2 = ()=>{
     setNum( num - 1 );
   }
   //이름을 담아줄 변수 필요, 이름을 변경할 함수가 필요하다. 
   const onChangeName = ( event )=>{
      console.log("랜더링 합니다. ");
      setName( event.target.value );
   }
   const [ age, setAge ] = useState(20);
   const onChangeAge = ( event )=>{
      setAge( event.target.value);
   }
   const [ score, setScore ] = useState(60);
   const onChangeScore = ( event ) =>{
      setScore( event.target.value);
   }
   return(
    <>
      <p> { num } </p>
      <button onClick={onClickButton}> useState연습버튼+1 </button>
      <button onClick={onClickButton2}> useState연습버튼-1 </button>
      <p></p>
      <input value={name} onChange={ onChangeName }/>
      <p> {name} </p>
      <p></p>
      <input value={age} onChange={onChangeAge}/>
      <p> { age }</p>
      <p></p>
      <input value={score} onChange={onChangeScore}/>
      <p> { score } </p>
    </>
   );
}