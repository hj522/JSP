<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<title>숙제 1번</title>
</head>
<body>
	<%	//스크립틀릿
		request.setCharacterEncoding("UTF-8");
		
		String name = request.getParameter("name");
		String address = request.getParameter("address");
		String email = request.getParameter("email");
	%>
<c:set var="name" value="<%=name%>" />
<c:set var="address" value="<%=address%>" />
<c:set var="email" value="<%=email%>" />
	<p>이름: ${name}</p>
	<p>주소: ${address}</p>
	<p>이메일: ${email}></p>
<script type="text/javascript">
let name = "${name}";
let address = "${address}";
let email = "${email}";
alert("name: " + name + ", addr: " + addr + ", email: " + email);
</script>
</body>
</html>