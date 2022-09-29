<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>Welcome</title>
</head>
<body>
	<nav class="navbar navbar-expand navbar-dark bg-dark">
		<div class="container">
			<div class="navbar-header">
				<a class="navbar-brand" href="./welcome.jsp">Home</a>
			</div>		
		</div>
	</nav>
	<%!
		String mall = "Book Market Mall";
		String market = "Welcome to Book Market";
	%>
		<!-- 표현문 -->
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3"><%=mall%></h1>
		</div>
	</div>
	<main role="main">
		<div class="container">
			<div class="text-center">
				<h3><%=market%></h3>
			</div>
			<hr />
		</div>
	</main>
</body>
</html>