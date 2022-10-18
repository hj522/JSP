<%@ page contentType="text/html; charset=UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>13장 숙제 4번</title>
</head>
<body>
	<%
		String user_id = request.getParameter("id");
		String user_pw = request.getParameter("passwd");
		
		if(user_id.equals("admin") && user_pw.equals("admin1234")) {
			session.setAttribute("userID", user_id);
			response.sendRedirect("welcome_hw.jsp");
		} else {
			out.println("세션 설정 실패");
		}
	%>
</body>
</html>