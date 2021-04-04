<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사원 정보</title>
</head>
<body>
	<form action="EmpUpdateServlet" method="get">
	<fieldset>
	<ul>
		<li><label for="empNo">사원 번호</label> 
		<input type="number" name="empNo" size="20" id="empNo" value="${emp.empNo }" autofocus></li>
		<li><label for="empName">사원명</label> 
		<input type="text" name="empName" size="20" id="empName" value="${emp.empName }"></li>
		<li><label for="title">직책</label> 
		<input type="text" name="title" size="20" id="title" value="${emp.title.no }"></li>
		<li><label for="manager">직속상관</label> 
		<input type="text" name="manager" size="20" id="manager" value="${emp.manager.empNo }"></li>
		<li><label for="salary">급여</label> 
		<input type="text" name="salary" size="20" id="salary" value="${emp.salary }"></li>
		<li><label for="dept">부서</label> 
		<input type="text" name="dept" size="20" id="dept" value="${emp.dept.deptNo }"></li>
		<li>
			<a href="EmpDelServlet?empNo=${emp.empNo }">삭제</a>
		</li>
		<li>
			<%-- <a href="empUpdate.jsp?empNo=${emp.empNo }&empName=${emp.empName }&title=${emp.title }&manager=${emp.manager }&salary=${emp.salary }&dept=${emp.deptNo }">수정</a> --%>
			<a href="empUpdate.jsp?empNo=${emp.empNo }&empName=${emp.empName }&title=${emp.title.no }&manager=${emp.manager.empNo }&salary=${emp.salary }&dept=${emp.dept.deptNo }">수정</a>
			<!-- <input type="submit" value="수정"> -->
		</li>
	</ul>
	</fieldset>
</form>
</body>
</html>