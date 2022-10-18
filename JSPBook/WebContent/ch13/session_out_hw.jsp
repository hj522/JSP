<%@ page contentType="text/html; charset=UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	// 세션 종료
	session.invalidate();
%>
<!DOCTYPE html>
<html>
<head>
<title>13장 숙제 4번</title>
</head>
<body>
세션을 종료하였습니다.<br />
<% response.sendRedirect("session_hw.jsp"); %>
</body>
</html>