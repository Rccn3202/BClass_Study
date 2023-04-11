//넘겨줄 자료 : 파란색-바다  ->파란색글싸로 바다가 나온다
export const PropsEx01 =(props) =>{
const contentStyle={
    color:props.color,
    fontSize:"25px", 
    backgroundColor:"black",
}
return(
    <p style={contentStyle}>{props.word}</p>
)

}