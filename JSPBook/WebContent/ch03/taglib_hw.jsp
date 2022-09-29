<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>숙제 6번</title>
</head>
<body>
	<!-- 0 2 4 6 8 10 출력 -->
	<c:forEach var="num" begin="0" end="10" step="2">
		<c:out value="${num}" />
	</c:forEach>
</body>
</html>