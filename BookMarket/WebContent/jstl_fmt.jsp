<%@ page contentType="text/html; charset=UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<title>9장 숙제 5번</title>
</head>
<body>
	<fmt:setLocale value="${param.language}" />
	<fmt:bundle basename="bundle.messageHw" >
	<div class="text-right">
		<a href="?language=ko">Korean</a> | <a href="?language=en"/>English</a>
	</div>
<form action="#" name="login">
	<p><fmt:message key="id"/> : <input type="text" name="id"></p>
	<p><fmt:message key="password"/> : <input type="text" name="password"></p>
	<p><input type="submit" value="<fmt:message key="button"/>"></p>
</form>
	</fmt:bundle>
</body>
</html>