<%@ page contentType="text/html; charset=UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<!-- commons-fileupload jar 사용 -->

	<form action="fileupload01_process.jsp" name="fileForm" method="post" enctype="multipart/form-data">
		<p>파일: <input type="file" name="filename" /></p>
		<p><input type="submit" value="파일 올리기" /></p>
	</form>
</body>
</html>
</body>
</html>