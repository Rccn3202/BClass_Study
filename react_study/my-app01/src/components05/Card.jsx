// import { useContext } from "react";
import {EditButton} from "./EditButton";

const style = {
    width: "300px",
    height: "200px",
    margin: "8px",
    borderRadius: "8px",
    display: "flex",
    flexDirection: "column",
    justifiyContent: "center",
    alignItems: "center"
};

export const Card=()=>{
    //  const {isAdmin,name}=props;
    return(
        <div style={style}>
            {/* <p>{name}{isAdmin}</p> */}
            <EditButton/>
        </div>
    );
}