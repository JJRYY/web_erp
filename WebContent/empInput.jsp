<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사원 입력</title>
</head>
<body>
	<h1>사원 추가</h1>
	<form action="EmpInsertServlet" method="get">
	<fieldset>
	<ul>
		<li><label for="empNo">사원 번호</label> 
		<input type="number" name="empNo" size="20" id="empNo" autofocus></li>
		<li><label for="empName">사원명</label> 
		<input type="text" name="empName" size="20" id="empName"></li>
		<li><label for="title">직책번호</label> 
		<input type="number" name="title" size="20" id="title"></li>
		<li><label for="manager">직속상관번호</label> 
		<input type="number" name="manager" size="20" id="manager"></li>
		<li><label for="salary">급여</label> 
		<input type="number" name="salary" size="20" id="salary"></li>
		<li><label for="dept">부서번호</label> 
		<input type="number" name="dept" size="20" id="dept"></li>
		<li><input type="submit" value="추가"><input type="reset" value="취소"> </li>
	</ul>
	</fieldset>
	</form>
</body>	
</html>