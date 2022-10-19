<%@page import="java.net.URLDecoder"%>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/JSPBook/resources/css/bootstrap.min.css">
<title>주문 완료</title>
</head>
<body>
<% // 스크립틀릿
	String Shipping_cartId = "";
	String Shipping_name = "";
	String Shipping_shippingDate = "";
	String Shipping_country = "";
	String Shipping_zipCode = "";
	String Shipping_addressName = "";
	
	// request객체에 있는 모든 쿠키 객체를 받자
	Cookie[] cookies = request.getCookies();
	// 쿠키의 개수만큼 반복
	for(int i=0;i<cookies.length;i++) {
		Cookie thisCookie = cookies[i];
		// 쿠키 이름 가져옴
//		out.print(thisCookie.getName() + "<br />");
		// 쿠키 값 가져옴
// 		out.print(URLDecoder.decode(thisCookie.getValue()) + "<br />");
		if(thisCookie.getName().equals("Shipping_name")){
			Shipping_name = URLDecoder.decode(thisCookie.getValue());		// 변수에 쿠키 값을 넣어줍니당
		}
		if(thisCookie.getName().equals("Shipping_shippingDate")){
			Shipping_shippingDate = URLDecoder.decode(thisCookie.getValue());
		}
		if(thisCookie.getName().equals("Shipping_country")){
			Shipping_country = URLDecoder.decode(thisCookie.getValue());
		}
		if(thisCookie.getName().equals("Shipping_zipCode")){
			Shipping_zipCode = URLDecoder.decode(thisCookie.getValue());
		}
		if(thisCookie.getName().equals("Shipping_addressName")){
			Shipping_addressName = URLDecoder.decode(thisCookie.getValue());
		}
		if(thisCookie.getName().equals("Shipping_cartId")){
			Shipping_cartId = URLDecoder.decode(thisCookie.getValue());
		}
	}
	
%>

	<jsp:include page="menu.jsp" />
	
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">주문 완료</h1>
		</div>
	</div>
	<!-- 주문 완료 -->
	<div class="container">
		<h2 class="alert alert-danger">주문해주셔서 감사합니다.</h2>
		<p>주문은 <%=Shipping_shippingDate%></p>
		<p>주문번호: <%=Shipping_cartId%></p>
	</div>
	<div class="container">
		<p><a href="products.jsp" class="btn btn-secondary">&laquo;상품목록</a></p>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>