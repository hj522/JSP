<%@ page contentType="text/html; charset=UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Exception</title>
</head>
<body>
	<%	// 스크립틀릿
		try {
			int num = 10 / 0;
			request.getParameter("name").toString();
		} catch (ArithmeticException e) {
			out.println("오류 발생 : " + e.getMessage());
	}
	%>
</body>
</html>