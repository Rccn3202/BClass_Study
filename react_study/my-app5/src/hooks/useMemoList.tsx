import {useCallback, useState} from "react";

export const useMemoList=()=>{
    const [memos, setMemos] = useState<string[]>([]);
    const addTodo = useCallback( (text:string)=>{
        const newMemos = [...memos];
        newMemos.push(text)
        setMemos(newMemos);
    } , [memos]);
    const deleteTodo = useCallback((index:number)=>{
        const newMemos = [...memos];
        newMemos.splice(index,1);
        setMemos(newMemos);
    },    [memos]);

    return{memos, addTodo, deleteTodo}; //컴포넌트가 아니므로 태그를 쓰지 않는다
}