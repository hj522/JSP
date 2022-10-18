<%@ page contentType="text/html; charset=UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page import="dto.Book"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.math.BigDecimal"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/BookMarket/resources/css/bootstrap.min.css">
<title>장바구니</title>
</head>
<body>
<%
	String cartId = session.getId();
	out.println("<p>cartId: " + cartId + "</p>");
%>

	<jsp:include page="menu.jsp" />

	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">장바구니</h1>
		</div>
	</div>
	
	<div class="container">
		<div class="row">
			<table width="100%">
				<tr>
					<td align="left">
						<a href="deleteCart.jsp?cartId=<%=cartId%>"	class="btn btn-danger">모두 삭제</a>
					</td>
					<td align="right">
						<a href="shippingInfo.jsp?cartId=<%=cartId%>" class="btn btn-success">주문하기</a>
					</td>
				</tr>
			</table>
		</div>
	
	<div style="padding-top:50px;">
		<table class="table table-hover">
			<tr>
				<th>도서</th><th>가격</th><th>수량</th>
				<th>금액</th><th>비고</th>
			</tr>
			<%
				ArrayList<Book> cartList = (ArrayList<Book>)session.getAttribute("cartlist");
				
				double sum = 0;
				
				if(cartList == null) {
			%>
			<tr>
				<td colspan="5" style="text-align:center;">장바구니에 도서가 없습니다.</td>
			</tr>
			<%
				} else {
					for(Book b : cartList) {
						double total = b.getUnitPrice() * b.getQuantity();
						BigDecimal totalBig = new BigDecimal(total);
						
						sum = sum + total;
			%>
			<tr>
				<td>
					<%=b.getBookId()%> -
					<%=b.getName()%>
				</td>
				<td><fmt:formatNumber value="<%=b.getUnitPrice()%>" pattern="#,###"/></td>
				<td><%=b.getQuantity()%></td>
				<td><fmt:formatNumber value="<%=totalBig%>" pattern="#,###"/></td>
				<td>
					<a href="removeCart.jsp?id=<%=b.getBookId()%>" class="badge badge-danger">삭제</a>
				</td>
			</tr>
			<%
					}
					BigDecimal big = new BigDecimal(sum);
			%>
			<tr>
				<th></th>
				<th></th>
				<th>총액</th>
				<th><fmt:formatNumber value="<%=big%>" pattern="#,###" /></th>
				<th></th>
			</tr>
			<%
				}
			%>
		</table>
		<a href="books.jsp" class="btn btn-secondary">&laquo;쇼핑 계속하기</a>
	</div>
	<jsp:include page="footer.jsp" />
</div>
	
</body>
</html>