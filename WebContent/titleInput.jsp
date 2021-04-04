<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>직책 입력 폼</title>
<style>
ul { list-style: none; }
li { margin: 20px; }
li label {	width: 100px;	float: left; }
h2 { text-align: center;}
</style>
</head>
<body>
	<h1>직책 추가</h1>
	<form action="TitleInsertServlet" method="get">
	<fieldset>
	<ul>
		<li><label for="tno">직책 번호</label> 
		<input type="number" name="tno" size="20" id="tno" autofocus></li>
		<li><label for="tname">직책명</label> 
		<input type="text" name="tname" size="20" id="tname"></li>
		<li><input type="submit" value="추가"><input type="reset" value="취소"> </li>
	</ul>
	</fieldset>
	</form>
</body>
</html>