<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script type="text/javascript">
	$(function() {

		$('#all').click(function() {
			$("input[name=box]:checkbox").each(function() {
				// this :  $("input[name=box]:checkbox").each(function()
			if ($("input[name=box]").length == $("input[name=box]:checked").length) { //기존 chk와 체크된 chk의 길이가 같은 경우
             // 전부 다 체크되어 있을 경우

             $("input[name=box]").attr("checked", true);
          } else {

             $("input[name=box]").attr("checked", false);
          }
			})
		});
	});
</script>
</head>
<body>

	<h1>전체 목록</h1>
	<form action="mudel.do" method="post" id="mudelform">
		<c:choose>
			<c:when test="${empty list }">
				<h3>고객 정보가 없습니다...</h3>
			</c:when>
			<c:otherwise>
				<table border="1">
					<col width="30px" />
					<col width="100px" />
					<col width="300px" />
					<col width="200px" />
					<tr>
						<th><input type="checkbox" id="all"  /></th>
						<th>ID</th>
						<th>PASSWORD</th>
						<th>NAME</th>
					</tr>
					<c:forEach items="${list }" var="dto">
						<tr>
							<td><input type="checkbox" name="box" /></td>
							<td><a href="selectone.do?id=${dto.id} ">${dto.id }</a></td>
							<td>${dto.password }</td>
							<td>${dto.name }</td>
						</tr>
					</c:forEach>
					<tr>
						<td colspan="5" align="right"><input type="button" value="추가"
							onclick="location.href='insertform.do'" /> <input type="button"
							value="처음으로" onclick="location.href='index.jsp'" /></td>
					</tr>
				</table>
			</c:otherwise>
		</c:choose>

	</form>

</body>
</html>