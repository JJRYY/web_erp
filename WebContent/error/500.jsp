<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>에러 발생</title>
</head>
<body>
발생한 예외 종류 : <%=exception.getClass().getName() %><br>
에러 메시지 : <%=exception.getMessage() %><br>
<%=exception.getCause() %>
<!-- 
사용 브라우저가 IE일 경우는 에러 페이지 크기가 513바이트 이상 되어야 인식된다. 513바이트 이상을 주석으로 만들어주자
사용 브라우저가 IE일 경우는 에러 페이지 크기가 513바이트 이상 되어야 인식된다. 513바이트 이상을 주석으로 만들어주자
사용 브라우저가 IE일 경우는 에러 페이지 크기가 513바이트 이상 되어야 인식된다. 513바이트 이상을 주석으로 만들어주자
사용 브라우저가 IE일 경우는 에러 페이지 크기가 513바이트 이상 되어야 인식된다. 513바이트 이상을 주석으로 만들어주자
사용 브라우저가 IE일 경우는 에러 페이지 크기가 513바이트 이상 되어야 인식된다. 513바이트 이상을 주석으로 만들어주자
 -->
</body>
</html>