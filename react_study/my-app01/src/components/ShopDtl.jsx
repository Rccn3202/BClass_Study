export const ShopDtl=(props)=>{
    const propsData={
        id:props.id,
        pw:props.pw,
        ShopDtl:props.ShopDtl,
    }
    return(
        <>
        <p>{props.id}, {props.pw}, {props.ShopDtl} </p>
        <p>{propsData.id}, {propsData.pw}, {propsData.ShopDtl} </p>
        </>
    );
}
// 이런식으로 login-shop-shopdtl로 내릴 수 있다