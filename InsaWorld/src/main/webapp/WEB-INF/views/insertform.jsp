<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<h1>글 작성</h1>

	<form action="insertres.do" method="post">
		<table border="1">
			<tr>
				<th>ID</th>
				<td><input type="text" name="id"></td>
			</tr>
			<tr>
				<th>PASSWORD</th>
				<td><input type="text" name="password"></td>
			</tr>
			<tr>
				<th>NAME</th>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<td colspan="2" align="right">
				<input type="submit" value="작성" >
				<input type="button" onclick="location.href='list.do'" value="취소"> 
			</tr>
		</table>
	</form>
	
</body>
</html>