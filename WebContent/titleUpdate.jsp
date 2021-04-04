<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>직책 수정</title>
</head>
<body>
<form action="TitleUpdateServlet" method="get">
	<fieldset>
	<ul>
		<li><label for="tno">직책 번호</label> 
		<input type="number" name="tno" size="20" id="tno" value="${param.no }" ></li>
		<li><label for="tname">직책명</label> 
		<input type="text" name="tname" size="20" id="tname" value="${param.name }" autofocus></li>
		<li>
			<input type="submit" value="수정">
		</li>
	</ul>
	</fieldset>
</form>
</body>
</html>