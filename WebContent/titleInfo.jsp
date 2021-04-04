<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>직책 정보</title>
</head>
<body>
<%-- ${title } --%>
<form action="TitleUpdateServlet" method="get">
	<fieldset>
	<ul>
		<li><label for="tno">직책 번호</label> 
		<input type="number" name="tno" size="20" id="tno" value="${title.no }" autofocus></li>
		<li><label for="tname">직책명</label> 
		<input type="text" name="tname" size="20" id="tname" value="${title.name }"></li>
		<li>
			<a href="TitleDelServlet?no=${title.no }">삭제</a>
		</li>
		<li>
			<a href="titleUpdate.jsp?no=${title.no }&name=${title.name }">수정</a>
			<!-- <input type="submit" value="수정"> -->
		</li>
	</ul>
	</fieldset>
</form>
</body>
</html>