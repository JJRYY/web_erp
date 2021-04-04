<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>부서 정보</title>
</head>
<body>
<form action="DeptUpdateServlet" method="get">
	<fieldset>
	<ul>
		<li><label for="deptNo">부서 번호</label> 
		<input type="number" name="deptNo" size="20" id="deptNo" value="${dept.deptNo }" autofocus></li>
		<li><label for="deptName">부서명</label> 
		<input type="text" name="deptName" size="20" id="deptName" value="${dept.deptName }"></li>
		<li><label for="floor">위치</label> 
		<input type="text" name="floor" size="20" id="floor" value="${dept.floor }"></li>
		<li>
			<a href="DeptDelServlet?deptNo=${dept.deptNo }">삭제</a>
		</li>
		<li>
			<a href="deptUpdate.jsp?deptNo=${dept.deptNo }&deptName=${dept.deptName }&floor=${dept.floor}">수정</a>
			<!-- <input type="submit" value="수정"> -->
		</li>
	</ul>
	</fieldset>
</form>
</body>
</html>