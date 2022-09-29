<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.List"%>
<%@page import="dto.Book"%>
<%@page import="dao.BookRepository"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html>
<%	//스크립틀릿 태그
	String id = request.getParameter("id");
	BookRepository bookRepository = BookRepository.getInstance();
	Book book = bookRepository.getBookById(id);
%>
<c:set var="book" value="<%=book%>" scope="page" />
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>도서 상세 정보</title>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<div class="jumbotron">
		<!-- 내용 드루와 -->
		<div class="container">
			<h1 class="display-3">도서 정보</h1>
		</div>
	</div>
	<!-- ================ 도서 상세 시작 ================ -->
	<div class="container">
		<div class="row">
			<div class="col-md-10">
				<h3>${book.name}</h3>
				<p>${book.description}</p>
				<p>
					<b>도서코드: </b>
					<span class="badge badge-danger">${book.bookId}</span>
				</p>
				<p><b>출판사</b>: ${book.publisher}</p>
				<p><b>저자</b>: ${book.author}</p>
				<p><b>재고 수</b>: ${book.unitsInStock}</p>
				<p><b>총 페이지 수</b>: ${book.totalPages}</p>
				<p><b>출판일</b>: ${book.releaseDate}</p> 
				<h4>${book.unitPrice}원</h4>
				<p>
					<a href="#" class="btn btn-info">상품주문&raquo;</a>
					<a href="books.jsp" class="btn btn-secondary">상품목록&raquo;</a>
				</p>
			</div>
		</div>
	</div>
	<!-- ================ 도서 상세 끝 ================ -->
	<jsp:include page="footer.jsp" />
</body>
</html>