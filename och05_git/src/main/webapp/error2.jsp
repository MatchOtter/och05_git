<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true"%>
<!DOCTYPE html>
<html>
<%
	response.setStatus(200);
%>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>
	<h1>공지사항</h1>
	더 나은 서비스를 위해서 준비중<p>
	메세지 : <%= exception.getMessage() %><p>
	클래스 : <%= exception.getClass() %><p>
</body>
</html>