import {  css } from "@emotion/react";
import styled from "@emotion/styled";

export const Emotion = ()=>{
    // 1. scss 하려면 import { jsx, css } from "@emotion/react";
    const containerStyle = css({  border: "solid 1px #aaa",
        borderRadius: "20px",
        padding: "8px",
        margin: "8px",
        display: "flex",
        justifyContent: "space-around",
        alignItems: "center"});
    // 2. 인라인 스타일방법 하려면 import { jsx, css } from "@emotion/react";
    const titleStyle = css( { 
        margin: 0,
        color: "#aaa"
    } );   
    // 3. styled-components 방법 하려면  import styled from "@emotion/styled";
    const SButton = styled.button`
              .button{
                        background-color: #ddd;
                        border: none;
                        padding: 8px;
                        border-radius: 8px;
                        &:hover {
                            background-color: #ddd;
                            color:#fff;
                            cursor: pointer; 
                        }
                        }
                      `;
    return(
      <div css={containerStyle}>
         <p css={titleStyle}> Emotion입니다</p>   
         <SButton>버튼</SButton>
     </div>

    );                            

}