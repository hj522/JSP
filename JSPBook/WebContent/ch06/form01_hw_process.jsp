<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<title>숙제 1번</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
		
		String name = request.getParameter("name");
		String address = request.getParameter("address");
		String email = request.getParameter("email");
	%>
	<p>이름: <%=name%></p>
	<p>주소: <%=address%></p>
	<p>이메일: <%=email%></p>
</body>
</html>