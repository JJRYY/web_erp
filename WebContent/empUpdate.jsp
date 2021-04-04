<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사원 수정</title>
</head>
<body>
	<form action="EmpUpdateServlet" method="get">
	<fieldset>
	<ul>
		<li><label for="empNo">사원 번호</label> 
		<input type="number" name="empNo" size="20" id="empNo" value="${param.empNo }" ></li>
		<li><label for="empName">사원명</label> 
		<input type="text" name="empName" size="20" id="empName" value="${param.empName }" autofocus></li>
		<li><label for="title">직책</label> 
		<input type="number" name="title" size="20" id="title" value="${param.title }"></li>
		<li><label for="manager">직속상관</label> 
		<input type="number" name="manager" size="20" id="manager" value="${param.manager }"></li>
		<li><label for="salary">급여</label> 
		<input type="number" name="salary" size="20" id="salary" value="${param.salary }"></li>
		<li><label for="dept">부서</label> 
		<input type="number" name="dept" size="20" id="dept" value="${param.dept }"></li>
		<li>
			<input type="submit" value="수정">
			<!-- <input type="submit" value="수정"> -->
		</li>
	</ul>
	</fieldset>
	</form>
</body>
</html>