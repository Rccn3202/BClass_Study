import { ShopDtl } from "./ShopDtl"


export const Shop=(props)=>{
    const contentProps={
        id:props.id,
        pw:props.pw,
        
    }
    // 객체분할
    const{id,pw} = contentProps;
    return(
        <>
        {console.log(id,pw)}
        <ShopDtl id={props.id} pw={props.pw} shopid="t-100"></ShopDtl>
        </>
    );
}