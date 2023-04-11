import { Child02 } from "./Child02";
import { Child03 } from "./Child03";
import {memo} from "react";

const style={
    height: "200px",
    backgroundColor: "lightblue",
    padding: "8px"
};

export const Child01 =memo( (props)=>{
    console.log( "Child01 랜더링"); 
    const {onClickReset}= props; // 객체분할대입
    return(
        <div style={style}>
            <p> Child1 </p>
            <button onClick={onClickReset}>리셋</button>
            <Child02></Child02> 
            <Child03></Child03>
        </div>
    );
});
