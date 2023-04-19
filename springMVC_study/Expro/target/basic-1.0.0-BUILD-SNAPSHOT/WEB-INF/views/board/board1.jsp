<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>
</head>
<body>
  <h1> 게시판 </h1>
  <form method="post">
    <p>작성자 : <input type="text" name="jspInputWriter" /></p>
    <p>제목 : <input type="text" name="jspInputTitle" /></p>
    <p>내용 : <input type="text" name="jspInputContent" /></p>
    <p><input type="submit" value="글쓰기" /> 
  </form>
</body>
</html>