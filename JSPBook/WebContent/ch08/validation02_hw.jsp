<%@ page contentType="text/html; charset=UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>숙제 5번</title>
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
		
		// \W: 알파벳 + 숫자 + _를 제외한 모든 문자를 찾음
		// \w: 알파벳 + 숫자 + _를 찾음
		if(/(\w)\1\1/.test(form.passwd.value)){
			alert("동일한 영문, 숫자는 3자 이상 연속 입력할 수 없습니다.");
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