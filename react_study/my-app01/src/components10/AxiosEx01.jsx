import axios from "axios";
import { useState } from "react";

export const AxiosEx01=()=>{

    const [userList, setUserList]=useState([]); //배열분할대입 함수값, 변할함수값, 초기값
    const [isLoading, setIsLoading]=useState(false);
    const [isError, setIsError] = useState(false);
    const onClickFetchUser=()=>{
        // axios 문법
        //  axios 
        //     .get(url주소) //여기서 데이터 받아오면
        //     .then(주소가 웹페이지에 들어오면 이부분을 처리) 
        //     .catch(에러 발생하면 이곳에서 처리)
        //     .finally(정상이거나 에러나 상관없이 항상 이곳을 처리한다)
       
       
        //  axios 
            // .get("https://jsonplaceholder.typicode.com/posts") 
            // .then(res=>{
            //     const users=res.data.map(user=>({ //위의 사이트의 user부분이 담긴다 1 이런거..
            //         userId: user.userId,
            //         id:user.id,
            //         title:user.title,
            //         body:user.body,
            //     }))
            //     setUserList(users); //useState([])(배열)에 user 1,2,3... 저장
            // } ) //result(유저네임.e 이래도 상관없음) 데이터를 갖고 들어옴 
            // .catch(
            // )
            // .finally(
            // )

            // axios 
            // .get("https://jsonplaceholder.typicode.com/comments") 
            // .then(res=>{
            //     const users=res.data.map(user=>({ //위의 사이트의 user부분이 담긴다 1 이런거..
            //         postId: user.postId,
            //         id:user.id,
            //         name:user.name,
            //         email:user.email,
            //         body:user.body,
            //     }))
            //     setUserList(users); //useState([])(배열)에 user 1,2,3... 저장
            // } ) //result(유저네임.e 이래도 상관없음) 데이터를 갖고 들어옴 
            // .catch(
            // )
            // .finally(
            // )

            setIsLoading(true);
            setIsError(false);

            axios 
            .get("https://jsonplaceholder.typicode.com/users")// 없는 주소를 넣으면 에러있다고 나온다 
            .then(res=>{
                const users=res.data.map(user=>({ //위의 사이트의 user부분이 담긴다 1 이런거..
                  
                    id:user.id,
                    street:user.address.street,
                    lat:user.address.geo.lat,
                    lng:user.address.geo.lng
                    
                }))
                setUserList(users); //useState([])(배열)에 user 1,2,3... 저장
            } ) //result(유저네임.e 이래도 상관없음) 데이터를 갖고 들어옴 
            .catch( ()=>setIsError(true) //에러 있다고 처리
            )
            .finally(()=>setIsLoading(false)) //파이널리에서 로딩 끝났다
        }                
          
    
    return(
        <>
        <button onClick = {onClickFetchUser}>사용자 정보 얻기</button> 
        {/* (조건문 ) ? (참):(거짓) */}
        {isError &&<p style={{color:"red"}}>에러 발생</p>}
       { (isLoading) ? (<p>데이터 가져오는 중</p>):             //자바스크립트 문장 {   }
                        (userList.map(user=>(<p>  
                                id-{user.id}<br></br>
                                street-{user.treet}<br></br>
                                lat-{user.lat}<br></br>
                                lng-{user.lng}</p>)))}

        {/* {userList.map(user=>(<p>userId{user.userId}<br></br>
                                id-{user.id}<br></br>
                                title-{user.title}<br></br>
                                body-{user.body}</p>))}  */}
        {/* {userList.map(user=>(<p>userId{user.postId}<br></br>
                                id-{user.id}<br></br>
                                title-{user.name}<br></br>
                                email-{user.email}<br></br>
                                body-{user.body}</p>))}     */}
                                
        
        </>
    );
}
