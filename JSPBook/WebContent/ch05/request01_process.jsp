<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<title>Implicit Objects</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("name");
		String pw = request.getParameter("passwd");
	%>
	
	<p>아이디: <%=id%></p>
	<p>비밀번호: <%=pw%></p>
</body>
</html>