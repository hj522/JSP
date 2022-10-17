<%@ page contentType="text/html; charset=UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page errorPage="exception_error.jsp" %>
<!-- 오류 발생 시 exception_error.jsp를 요청
	*500 오류 1.page디렉티브 2.web.xml 둘 다 적용되어 있을 경우 1번이 우선으로 적용된다
	*page디렉티브 > web.xml > try~catch 우선순위로 적용 -->
<!DOCTYPE html>
<html>
<head>
<title>Exception</title>
</head>
<body>
	<%	//스크립틀릿
		String num1 = request.getParameter("num1");
		String num2 = request.getParameter("num2");
		
		int a = Integer.parseInt(num1);
		int b = Integer.parseInt(num2);
		int c = a / b;
		out.print(num1 + " ÷ " + num2 + " = " + c);
		
	%>
</body>
</html>