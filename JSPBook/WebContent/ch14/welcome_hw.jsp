<%@ page contentType="text/html; charset=UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>14장 숙제 3번</title>
</head>
<body>
<%
	Cookie[] ids = request.getCookies(); // 모든 쿠키 객체 받아오기 (id)
	
	if(ids[0] == null){
		response.sendRedirect("cookie_out_hw.jsp");
	}
%>
	<h1><%=ids[0].getValue()%>님 반갑습니다♥</h1>
	<a href="cookie_out_hw.jsp">로그아웃</a>
	
</body>
</html>