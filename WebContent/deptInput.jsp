<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>부서 입력</title>
</head>
<body>
	<h1>부서 추가</h1>
	<form action="DeptInsertServlet" method="get">
	<fieldset>
	<ul>
		<li><label for="deptNo">부서 번호</label> 
		<input type="number" name="deptNo" size="20" id="deptNo" autofocus></li>
		<li><label for="deptName">부서명</label> 
		<input type="text" name="deptName" size="20" id="deptName"></li>
		<li><label for="floor">위치</label> 
		<input type="text" name="floor" size="20" id="floor"></li>
		<li><input type="submit" value="추가"><input type="reset" value="취소"> </li>
	</ul>
	</fieldset>
	</form>
</body>
</html>