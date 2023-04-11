import {AAA} from "./AAA";
export const AA =(props)=>{
    const aa={
        name:props.name,
        age:props.age,
    }
    return (
        <>
        <AAA name={props.name} age="100"></AAA>
        </>
    );
}