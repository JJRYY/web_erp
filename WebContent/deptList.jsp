<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>부서 목록</title>
</head>
<body>
	<h2>부서 목록</h2>
	<table border="1">
		<thead>
			<tr>
				<td>직책번호</td><td>직책명</td><td>위치</td>
			</tr>
		</thead>	
		<tbody>
		<c:forEach var="dept" items="${list }">
			<tr>
				<td>${dept.deptNo }</td>
				<td><a href="DeptGetServlet?deptNo=${dept.deptNo }">${dept.deptName }</a></td>
				<td>${dept.floor }
			</tr>
		</c:forEach>
		</tbody>
		<tfoot>
			<tr><td colspan="3"><a href="deptInput.jsp">부서 추가</a>
		</tfoot>
	</table>
</body>
</html>