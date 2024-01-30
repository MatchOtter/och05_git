<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
	﻿<%
out.println("<h2>cal3 페이지</h2><p>");
try {
	int num1 = Integer.parseInt(request.getParameter("num1"));
	int num2 = Integer.parseInt(request.getParameter("num2"));
	out.println(num1 + "+" + num2 + " = " + (num1 + num2) + "<p>");
	out.println(num1 + "-" + num2 + " = " + (num1 - num2) + "<p>");
	out.println(num1 + "*" + num2 + " = " + (num1 * num2) + "<p>");
	out.println(num1 + "/" + num2 + " = " + (num1 / num2) + "<p>");

} catch (NumberFormatException e) {
%>
	<script type="text/javascript">
		alert("숫자가 아니다");
		history.go(-1);
	</script>
	<%
	} catch (ArithmeticException e) {
	%>
	<script type="text/javascript">
		alert("0으로 못 나눈다");
		history.back();
	</script>
	<%
	} catch (Exception e) {
	out.println(e.getMessage());
	%>
	<script type="text/javascript">
		alert("Error!!");
		location.href = "num2.jsp";
	</script>
	<%
	}
	%>
</body>
</html>