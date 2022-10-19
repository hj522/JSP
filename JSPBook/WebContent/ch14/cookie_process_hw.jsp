<%@ page contentType="text/html; charset=UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>14장 숙제 3번</title>
</head>
<body>
	<%
		String user_id = request.getParameter("id");
		String user_pw = request.getParameter("passwd");
		
		if(user_id.equals("admin") && user_pw.equals("1234")) {
			
			Cookie cookie_id = new Cookie("userID", user_id);
			
			response.addCookie(cookie_id);
			response.sendRedirect("welcome_hw.jsp");
		}
	%>
</body>
</html>