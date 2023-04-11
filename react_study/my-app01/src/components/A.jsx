//이름 나이 점수
import { AA } from "./AA";
export const A =(props)=>{
    const a={
        name:props.name,

    }
    return (
        <>
        <AA name={props.name}></AA>
        </>
    );
}