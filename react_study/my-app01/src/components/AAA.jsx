import {AAAAdtl} from "./AAAAdtl";
export const AAA =(props)=>{
    const aaa={
        name:props.name,
        age:props.age,
        score:props.sccore,
    }
    return (
        <>
        <AAAAdtl name={props.name} age={props.age} score="99"></AAAAdtl>
        </>
    );
}