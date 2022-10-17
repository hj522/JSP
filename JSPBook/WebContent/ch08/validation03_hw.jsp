<%@ page contentType="text/html; charset=UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>숙제 6번</title>
<script type="text/javascript">
	function checkLogin() {
		
		const form = document.loginForm;
		const regPw = /^(?=.*[a-zA-Z])(?=.*[!@#$%^&*+=-])(?=.*[0-9]).{8,20}$/;
		
		if(form.id.value == "") {
			alert("아이디를 입력해주세요.");
			return false;
		} else if(form.passwd.value == "") {
			alert("비밀번호를 입력해주세요.");
			form.passwd.focus();
			return false;
		} else if(form.passwd2.value == "") {
			alert("비밀번호를 입력해주세요.");
			form.passwd.focus();
			return false;
		}
		
		// 문자열 찾기 search 사용
		if((form.passwd.value).search(form.id.value) > -1){
			alert("비밀번호는 ID를 포함할 수 없습니다.");
			form.passwd.focus();
			return false;
		}
		
		if(!regPw.test(form.passwd.value)){
			alert("영문+숫자+특수기호 8자리 이상으로 구성하여야 합니다.");
			return false;
			
		} else if (form.passwd.value != form.passwd2.value) {
			alert("비밀번호를 다시 확인해주세요!");
			form.passwd2.focus();
			return false;
		}
		
		form.submit();
	}
</script>
</head>
<body>
	<form name="loginForm" action="validation02_process_hw.jsp" method="post">
	<p>아이디: <input type="text" name="id" /></p>
	<p>비밀번호: <input type="password" name="passwd" /></p>
	<p>비밀번호 확인: <input type="password" name="passwd2" /></p>
	<p><input type="button" value="전송" onclick="checkLogin()" /></p>
	</form>
</body>
</html>