<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<title>숙제 4번</title>
</head>
<body>
	<%	request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("name");
		String pw = request.getParameter("passwd");
	%>
	
	<p>전송된 요청 파라미터: <%=request.getQueryString()%></p>

</body>
</html>