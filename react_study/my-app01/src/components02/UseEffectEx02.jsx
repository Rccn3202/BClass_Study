// import { UseState,useEffext } from "react";

// export const UseEffectEx01=()=>{
//     const [count, setCount]=useState(100);
//     const [name, setName]=useState("");

//     const onChangeName=(event)=>{
//         useEffect( ()=>{
//         console.log("useEffect 실행됨",count)
//     }, []);
//         console.log("이름 수정시 랜더링");
//         setName(event.target.value);
//     }
//     const onClickButton=(event)=>{
//         console.log("점수 수정시 랜더링");
//         setCpunt(event=>count+1);
//     }
//     useEffect( ()=>{
//         console.log("useEffect 실행됨",count)
//     }, [count]);

//     return(
//         <>
//         <p>안녕하세요 {name} 입니다</p>
//         <input onClick={onChangeName}></input>
// <p>{count}번 클릭했음</p>
// <button onClick={onClickButton}>UseEffext버튼</button>

//         </>
//     );
// }

