<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<h1>게시글 상세보기</h1>
	<table border="1">
	<tr>
		<th>ID</th>
		<td>${dto.id}</td>
	</tr>
	<tr>
		<th>PASSWORD</th>
		<td>${dto.password}</td>
	</tr>
	<tr>
		<th>NAME</th>
		<td>${dto.name}</td>
	</tr>
	<tr>
		<td colspan="2">
		 <input type="button" value="수정" onclick="location.href='updateform.do?id=${dto.id}'"> 
         <input type="button" value="삭제" onclick="location.href='delete.do?id=${dto.id}'"> 
         <input type="button" value="목록" onclick="location.href='list.do'">
         </td>   
		
	</tr>	

	</table>
	
</body>
</html>