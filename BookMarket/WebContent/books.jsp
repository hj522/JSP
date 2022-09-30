<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<%@page import="java.util.List"%>
<%@page import="dto.Book"%>
<%@page import="dao.BookRepository"%>
<!DOCTYPE html>
<%	// 스크립틀릿 태그
	// 3개의 도서가 있는 객체 생성
	BookRepository bookDAO = BookRepository.getInstance();
	// SELECT * FROM BOOK
	List<Book> listOfBooks = bookDAO.getAllBooks();
%>

<c:set var="listOfBooks" value="<%=listOfBooks%>" scope="page" />

<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>도서 목록</title>
</head>
<body>
	<!-- include 액션 태그를 사용하여 header 추가 -->
	<jsp:include page="menu.jsp" />
	<div class="jumbotron">
		<!-- 내용 -->
		<div class="container">
			<h1 class="display-3">도서 목록</h1>
		</div>
	</div>
	<!--도서 목록 -->
	<div class="container">
		<div class="row" style="justify-content:right;margin:0 0 30px; 0;">
			<a href="addBook.jsp" class="btn btn-primary" style="float:right;clear:both;">도서 추가</a>
		</div>
		<div class="col">
			<c:forEach var="book" items="${listOfBooks}">
				<div class="col-md-10">
					<h3>${book.name}</h3>
					<p>${book.description}</p>
					<p>${book.author} | ${book.publisher} | ${book.unitPrice}</p>
					<!-- 상세정보 버튼 -->
					<p><a href="book.jsp?id=${book.bookId}" class="btn btn-secondary" role="button">상세 정보&raquo;</a></p>	
				</div>
				<hr />
			</c:forEach>
		</div>
	</div>
	<jsp:include page="footer.jsp" />	

</body>
</html>