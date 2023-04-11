import { Shop } from "./Shop";
export const Login=(props)=>{
   const propsData={
    id:props.id,
    pw:props.pw,

   }
    return(<> 
    <Shop id={props.id} pw={props.pw}></Shop>
    </>);
    
}