import {memo} from "react";

const style={
    height: "50px",
    backgroundColor: "lightgray"
};

export const Child02 = memo(()=>{
    console.log("Child02 랜더링");
    return(
        <div style={style}>
            <p> Child02 </p>
        </div>
     );
});