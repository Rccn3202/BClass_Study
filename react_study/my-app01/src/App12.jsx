import { useState, memo, useCallback } from "react";
import {Child01} from "./components03/Child01"
import {Child04} from "./components03/Child04"

const App12 = memo (() =>{
    console.log("App 렌더링");
    const [num,setNum]=useState(0);
    const onClickButton=()=>{
        setNum(num+1);
    };

const onClickReset = useCallback (()=>{
    setNum(0);
},[]); // 처음에 한번 만들고 재사용한다                                     

    return(
        <>
        <button onClick={onClickButton}>버튼</button>
        <p>{num}</p>
        {/*props모습 : props로 onClickReset을 내려준다 */}
        <Child01 onClickReset={onClickReset}></Child01>
        <Child04></Child04>
        </>
    );
});

export default App12;