import { Login } from "./Login"
import { Shop } from "./Shop"
import { ShopDtl } from "./ShopDtl"


export const PropsEx02 =() =>{
return (<>

{/* 아이디와 비번 등을 내려준다(id="1233"이런식) */}
<Login id="abs" pw="1234" ></Login> 

<ShopDtl></ShopDtl>


</>);
}
//리턴문 안에는 루트태그 하나만 들어간다. <> </>


