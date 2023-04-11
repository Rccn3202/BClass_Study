import {memo} from "react";

const style={
    height: "50px",
    backgroundColor: "lightgray"
};

export const Child03 = memo(()=>{
    console.log("Child03 랜더링");
    return(
        <div style={style}>
            <p> Child03 </p>
        </div>
     );
});