<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<title>Implicit objects</title>
</head>
<body>
	<!-- process.jsp?name=개똥이 -->
	<form action="process.jsp" method="post">
		<p>
			이름: <input type="text" name="name" />
			<input type="submit" value="전송" />
		</p>
	</form>
</body>
</html>