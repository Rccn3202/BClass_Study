import {memo} from "react";

const style={
    height: "200px",
    backgroundColor: "wheat",
    padding: "8px"
};

export const Child04 = memo(()=>{
    console.log("Child04 랜더링");
    return(
        <div style={style}>
            <p> Child04 </p>
        </div>
     );
});