<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	
	<h1>게시글 수정</h1>
	<form action="update.do" method="post">
	<input type="hidden" name="id" value="${dto.id }">
	<table border="1">
	<tr>
		<th>ID</th>
		<td>${dto.id }</td>
	</tr>
	<tr>
		<th>PASSWORD</th>
		<td><input type="text" name="password" value="${dto.password}"></td>
	</tr>
	<tr>
		<th>NAME</th>
		<td><input type="text" name="name" value="${dto.name}"></td>
	</tr>
	<tr>
		<td colspan="2">
		 <input type="submit" value="완료" > 
         <input type="button" value="취소" onclick="location.href='selectone.do?'"/> 
         </td>   
		
	</tr>	

	</table>
	</form>
	
</body>
</html>