import { useContext } from "react";
import {Card} from "./components05/Card"
import { AdminFlagContext5 } from "./components05/providers/AdminFlagProvider";

const App13=()=>{
  //const[isAdmin,setIsAdmin]=useState(false); // t/f 넣기(책)
  //const[name,setName]=useState(""); //이름 넣기
  const {isAdmin,setIsAdmin,name,setName}=useContext(AdminFlagContext5);
  

  const onClickName=()=>{
    const inName=prompt("이름은? ");
    setName(inName);
  }
  const onClickSwitch=()=>{
    setIsAdmin(!isAdmin);
  }

  return(
    <>
    <button onClick={onClickName}>이름 입력</button>
    {(isAdmin) ? <span>{name}관리자</span>:<span>{name}일반인</span>}
    <br></br>
    <button onClick={onClickSwitch}>전환</button>
    <Card/>
    </>
  );
}

export default App13;