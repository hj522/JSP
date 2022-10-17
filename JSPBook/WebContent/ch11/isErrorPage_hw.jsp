<%@ page contentType="text/html; charset=UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<h3>오류 발생</h3>
	<table border="1">
		<tr>
			<th>Error</th>
			<td><%=exception.getClass().getName() %> 오류 발생!!</td>
			<!-- 예외 유형
			<td>${pageContext.exception}</td>
			 -->
		</tr>
		<tr>
			<th>URL</th>
			<td><%=request.getRequestURI() %></td>
			<!-- 오류가 발생한 URI 주소
			<td>${pageContext.errorData.requestURI}</td> 
			 -->
		</tr>
		<tr>
			<th>Status Code</th>
			<td><%=response.getStatus() %></td>
			<!-- 오류 코드
			<td>${pageContext.errorData.statusCode}</td>
			 -->
		</tr>
	</table>
</body>
</html>