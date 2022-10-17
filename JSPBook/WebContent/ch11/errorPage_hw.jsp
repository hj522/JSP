<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page errorPage="isErrorPage_hw.jsp" %>
<!-- errorPage.jsp실행 중에 오류 발생 시 errorPage_error.jsp를 요청함 -->
<!DOCTYPE html>
<html>
<head>
<title>Exception</title>
</head>
<body>
     <%
        int a = 1;
        if (a == 1) {
           throw new RuntimeException("");
        }
     %>
</body>
</html>