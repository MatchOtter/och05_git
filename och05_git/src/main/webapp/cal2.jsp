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
	out.println("<h2>cal2 페이지</h2><p>");
	try { 
		int num1 = Integer.parseInt(request.getParameter ("num1")); 
		int num2 = Integer.parseInt(request.getParameter("num2")); 
		out.println(num1 + "+"+ num2 + " = " + (num1+num2) + "<p>");
		out.println(num1 + "-"+ num2 + " = " + (num1-num2) + "<p>");
		out.println(num1 + "*"+ num2 + " = " + (num1*num2) + "<p>");
		out.println(num1 + "/"+ num2 + " = " + (num1/num2) + "<p>");
		
	} catch (Exception e) {
		RequestDispatcher rd= request.getRequestDispatcher("error.jsp");
		rd.forward(request, response);
		out.println("JSP e.getMessage()->"+e.getMessage());
	}
%>
</body>
</html>