import React, { Component } from "react";
import { BrowserRouter, HashRouter,  Routes, Route} from "react-router-dom";
import { Header} from "./components6/Header";
import { Main } from "./components6/Main";
import { Product } from "./components6/Product";
import { ProductDtl } from "./components6/ProductDtl";
export const App14 = ()=>{
    return(
        <div className="App">
          <BrowserRouter>
             <Header></Header>
             <Routes>
               <Route path="/" element={ <Main></Main> }></Route>
               <Route path="/product" element={<Product></Product> }></Route>
               <Route path="/product/3" element={<ProductDtl></ProductDtl>}></Route>
               {/* /product/3 <ProductDtl>이동하기 */}
             </Routes>
          </BrowserRouter>  
          <h3> 해시 라우팅 </h3>
          <HashRouter>
             <Header></Header>
             <Routes>
               <Route path="/" element={ <Main></Main> }></Route>
               <Route path="/product" element={<Product></Product> }></Route>
               <Route path="/product/3" element={<ProductDtl></ProductDtl>}></Route>
               {/* /product/3 <ProductDtl>이동하기 */}
             </Routes>
          </HashRouter> 
        </div>
    );
}
export default App14;