<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<title>숙제 5번</title>
</head>
<body>
	<%
		Date today = new java.util.Date();
	
		out.print("Today: "+ today);
		
	%>
</body>
</html>