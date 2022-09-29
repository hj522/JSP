<%@ page contentType="text/html; charset=UTF-8" %>
<%@page import="java.util.Date"%>
<%@page import="java.lang.Math"%>
<!DOCTYPE html>
<html>
<head>
<title>숙제 4번</title>
</head>
<body>
	<% Date today = new java.util.Date();%>
	<% out.print("현재 날짜: " + today + "<br>");%>
	<% out.print("5의 제곱: " + (int)Math.pow(5,2));%>
</body>
</html>
