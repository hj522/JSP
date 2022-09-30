<%@page import="java.util.Enumeration"%>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<title>숙제 5번</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
		
		Enumeration paramNames = request.getParameterNames();
	
		String paramValue = "";
		
		while(paramNames.hasMoreElements()) {
		String name = (String)paramNames.nextElement();
			paramValue = request.getParameter(name);
			out.println(name+": "+paramValue+"<br>");
		}
	%>

</body>
</html>