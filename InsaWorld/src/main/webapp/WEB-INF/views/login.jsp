<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
	function login(){
		// id랑 pw 값을 변수에 담아준다.
		var idval = $("#id").val();
		var pwval = $("#pw").val();
		
		// 만약 id값이 null이거나 공백이면 ID 입력해주세요 비밀번호도 마찬가지
		if(idval==null||idval==""){
			alert("ID를 확인해 주세요");
		}else if(pwval==null||pwval==""){
			alert("PW를 확인해 주세요");
		}else {
			
			// msg 임의로 넣어준 값
			$.ajax({
				type: "post",
				url : "login.do",
				data :"id="+idval+"&pw="+pwval,
				success:function(msg){
					if(msg.loginChk == true){
						location.href="list.do";
					}else{
						$("#loginchk").html("ID or PW 확인!");
					}
				},
				error:function(){
					alert("로그인 통신 실패");
				}
			});
			
		}
	}

</script>
</head>
<body>

	<table>
		<tr>
			<th>ID</th>
			<td><input type="text" id="id"></td>
		</tr>
		<tr>
			<th>PW</th>
			<td><input type="text" id="pw"></td>
		</tr>
		<tr>
			<td colspan="2">
				<input type="button" value="로그인" onclick="login();">
			</td>
		</tr>
		<tr>
			<td colspan="2" align="center" id="loginchk"></td>
		</tr>
	</table>

</body>
</html>