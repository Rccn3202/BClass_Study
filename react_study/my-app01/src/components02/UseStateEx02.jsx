import { useState } from "react";

export const UseStateEx01=()=>{
    //형식 const [변수명 , 변수를 바꿀 함수명]=useState(초기값); //배열분할대입
    const [num,setNum] = useState(0);
    const onClickButton=()=>{
        console.log("재 랜더링 합니다");
        setNum(num+1);
    }
    const onClickButton2=()=>{
        setNum(num-1);
    }
    //이름을 담아줄 변수 필요, 이름을 변경할 함수 필요->useState 사용
    const[name,setName]=useState("");
    const onChangeName=(event)=>{
        console.log("랜더링 합니다");
        setName(event.target.value);//이벤트에 들어온 것에 입력한 값을 setName에 넣어라
    }
    //나이
    const[age,setAge]=useState("0");
    const onChangeAge=(event)=>{
        setAge(event.target.value);
    }
    //점수
    const[score,setScore]=useState("0");
    const onChangeScore=(event)=>{
        setScore(event.target.value);
    }

    return(
    <>
    <p>{num}</p>
    <button onClick={onClickButton}>useState연습버튼+1</button>
    <button onClick={onClickButton2}>useState연습버튼-1</button>
    <p></p>
    <input value={name} onChange={onChangeName}></input>
    <p> {name} </p>
    <input value={age} onChange={onChangeAge}></input>
    <p> { age } </p>
    <input value={score} onChange={onChangeScore}></input>
    <p> { score } </p>
    </>
    );
}