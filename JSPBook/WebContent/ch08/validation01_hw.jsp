<%@ page contentType="text/html; charset=UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>숙제 4번</title>
<title>Validation</title>
<script type="text/javascript">
	function checkLogin() {
		
		const form = document.loginForm;

		if(form.id.value == "") {
			alert("아이디를 입력해주세요.");
			return false;
		} else if(form.passwd.value == "") {
			alert("비밀번호를 입력해주세요.");
			form.passwd.focus();
			return false;
		}
		
		// 문자열 찾기 search 사용
		if((form.passwd.value).search(form.id.value) > -1){
			alert("비밀번호는 ID를 포함할 수 없습니다.");
			return false;
		}
		form.submit();
	}
</script>
</head>
<body>
	<form name="loginForm" action="validation02_process.jsp" method="post">
	<p>아이디: <input type="text" name="id" /></p>
	<p>비밀번호: <input type="password" name="passwd" /></p>
	<p><input type="button" value="전송" onclick="checkLogin()" /></p>
	</form>
</body>
</html>