import { useContext } from "react";
import { AdminFlagContext5 } from "./providers/AdminFlagProvider";

const style={
    width: "100px",
   paddin:"6px",
    borderRadius: "8px",
};
export const EditButton=()=>{
    // const{isAdmin,name}=props;
    const modifyButton=()=>{
        alert("수정버튼을 눌렀다");
    }
    //글로벌 State를 사용할 것을 지정함. 그것에 대한 인수값은 Admin~, 변수는 contexdt~(여기에 children 넣음)
    // const contextValue=useContext(AdminFlagContext5);
    const{isAdmin,name}=useContext(AdminFlagContext5);
    console.log(isAdmin+" "+name);
    return (
        <>
        <button style={style} disabled={!isAdmin} onClick={modifyButton}>수정</button>
        {(isAdmin) ? <span>관리자-{name}</span>:<span>일반-{name}</span>}
        </>
    );
}