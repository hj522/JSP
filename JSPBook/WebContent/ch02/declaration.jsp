<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<title>숙제 4번</title>
</head>
<body>
	<%!
		String hello = "Hello, Java Server Pages";
		String getString() {
			return hello;
		}
	%>
	<%out.print(getString());
	%>
</body>
</html>