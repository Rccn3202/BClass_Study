import { ChangeEvent,useState,FC, useCallback } from "react";
import styled from "styled-components";
import { MemoList } from "./MemoList";
import { useMemoList } from "../hooks/useMemoList";



export const MemoComponents:FC = ()=>{
    const { memos, addTodo, deleteTodo }=useMemoList(); //사용자 정의 훅

    const [text,setText]=useState<string>("");
    // const [memos,setMemos]=useState<string[]>([]);

    const onChangeText=(e: ChangeEvent<HTMLInputElement>) => setText(e.target.value);

    const onClickAdd=()=>{
        // const newMemos = [...memos];
        // newMemos.push(text);
        // setMemos(newMemos);
        addTodo(text); //사용자정의 훅에 있는 코드를 호출
        setText("");
    };
    const onClickDelete=useCallback((index:number)=>{
    //     const newMemos=[...memos];
    //     newMemos.splice(index, 1);
    //     setMemos(newMemos);
    // },[memos ]);
    deleteTodo(index);// 사용자정의 훅에 있는 코드를 호출
    },[deleteTodo]);
    
    return(
        <>
        <h1>메모장</h1>
        <input type="text" value={text} onChange={onChangeText}/>
        <SButton onClick={onClickAdd}>추가</SButton>
        <MemoList memos={memos} onClickDelete={onClickDelete}/>
        {/* <SContainer>
            <p>메모 목록</p>
            <ul>
                {memos.map((memo,index)=> ( 
                    <li key={memo}>
                        <SMemoWrapper>
                            <p>{memo}</p>
                            <SButton onClick={ ()=>onClickDelete(index)}>삭제</SButton>
                        </SMemoWrapper>
                    </li>
                ))}
            </ul>
        </SContainer> */}
        </>
    );
};

const SButton = styled.button`
                        margin-left:16px;
`;
// const SContainer=styled.div`
//                     border:solid 1px #ccc;
//                     padding:16px;
//                     margin:8px;
//                     `;
// const SMemoWrapper=styled.div`
//                     display:flex;
//                     align-items:center;
//                     `;