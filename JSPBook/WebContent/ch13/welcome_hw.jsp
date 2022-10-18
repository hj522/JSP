<%@ page contentType="text/html; charset=UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>13장 숙제 4번</title>
</head>
<body>
<%
		String user_id = (String)session.getAttribute("userID");
		
		if(user_id == null){
			response.sendRedirect("session_out_hw.jsp");
		}
		out.println(user_id + "님 반갑습니다.<br>");
		out.println("<a href='session_out_hw.jsp'>로그아웃</a>");
%>
</body>
</html>