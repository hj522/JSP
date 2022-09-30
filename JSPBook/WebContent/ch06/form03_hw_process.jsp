<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<title>숙제 6번</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
		String[] fruit = request.getParameterValues("fruit");
	%>
	
	<h3>선택한 과일</h3>
	<p>
		<%
			if(fruit!=null) {
				for(String f : fruit) {
					out.println(" "+ f);
				}
			}
		%>
	</p>
	
</body>
</html>