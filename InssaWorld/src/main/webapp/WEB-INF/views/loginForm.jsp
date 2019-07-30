<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>로그인 페이지</title>

<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.4.1.min.js"></script>


<style type="text/css">
body {
	background-image: url("resources/image/login_back2.gif");
	background-size: cover;
	background-repeat: no-repeat;
}

#page {
	width: 100%;
	height: 100%;
}

.circle {
	width: 33em;
	height: 33em;
	border-radius: 50%;
	background-color: #ffffff;
	margin-left: 36%;
	margin-top: 9%;
	position: relative;
}

#logo {
	margin-left: 22%;
	margin-top: 5em;
	position: relative;
	width: 18em;
}

#login_form {
	margin-top: 1em;
	text-align: center;
}

#btn {
	margin-top: 2em;
	background-color: #262626;
	color: white;
	padding: 5px;
	width: 16em;
	height: 3em;
	border-radius: 2em;
}

.login_append {
	margin-top: 1em;
	margin-left: 10em;
}

.login_append a {
	font-size: small;
	color: #4b4b4b;
}

.inp_text input {
	border-radius: 20px;
	border: 1px solid #e1e1e1;
	padding-left: 2em;
	height: 3em;
	width: 17em;
	margin-top: 1em;
	color: #8f8f8f;
}
</style>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

</head>
<body onload="document.f.id.focus();">

	<div id="page">

		<div class="circle">
			<img id="logo" src="resources/image/login_logo.png">

			<div id="login_form">

				<c:url value="/login" var="loginUrl" />
				<form:form name="f" action="${loginUrl}" method="POST">
					<c:if test="${param.error != null}">
						<p>아이디와 비밀번호가 잘못되었습니다.</p>
					</c:if>
					<c:if test="${param.logout != null}">
						<p>로그아웃 하였습니다.</p>
					</c:if>
					<p>
						<label for="username">아이디</label> <input type="text" id="id"
							name="id" />
					</p>
					<p>
						<label for="password">비밀번호</label> <input type="password"
							id="password" name="password" />
					</p>
					<button type="submit" class="btn">로그인</button>
				</form:form>



			</div>

			<div class="login_append">
				<span class="txt_find"> <a href="#" class="find_id">아이디/비밀번호
						찾기</a>
				</span> <span><a href="signUp.do">회원가입</a></span>
			</div>
		</div>

	</div>

</body>
</html>