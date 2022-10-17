<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%> 
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/bootstrap.min.css">
<title>도서 등록</title>
<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/validation.js"></script>
</head>
<body>
	<fmt:setLocale value="${param.language}" />
<!-- 현재 로케일에 따라 리소스번들이 위치한 /src/bundle/패키지(디렉터리)에 message.properties를 가져오도록 basename 속성을 작성함 -->
	<fmt:bundle basename="bundle.message" >
	<jsp:include page="menu.jsp" />
	<div class="jumbotron">
		<!-- 내용 드루와 -->
		<div class="container">
			<h1 class="display-3"><fmt:message key="bookRegistration"/></h1>
		</div>
	</div>
	<!-- ================ 도서 등록 시작 ================ -->
	<div class="container">
		<div class="text-right">
			<a href="?language=ko">Korean</a> | <a href="?language=en"/>English</a>
			| <a href="logout.jsp">로그아웃</a>
		</div>
		<form name="newBook" action="processAddBook.jsp" class="form-horizontal" method="post" enctype="multipart/form-data">
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="bookId"/></label>
				<div class="col-sm-3">	<!--  name = VO이름이랑 같아야 함! -->
					<input type="text" id="bookId" name="bookId" class="form-control"/>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="name"/></label>
				<div class="col-sm-3">
					<input type="text" id="name" name="name" class="form-control"/>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="unitPrice"/></label>
				<div class="col-sm-3">
					<input type="text" id="unitPrice" name="unitPrice" class="form-control"/>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="description"/></label>
				<div class="col-sm-3">
					<textarea name="description" rows="2" cols="50" class="form-control" required></textarea>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="author"/></label>
				<div class="col-sm-3">
					<input type="text" name="author" class="form-control" />
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="publisher"/></label>
				<div class="col-sm-3">
					<input type="text" name="publisher" class="form-control" />
				</div>
			</div>		
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="category"/></label>
				<div class="col-sm-3">
					<input type="text" name="category" class="form-control" />
				</div>
			</div>		
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="unitsInStock"/></label>
				<div class="col-sm-3">
					<input type="text" id="unitsInStock" name="unitsInStock" class="form-control" />
				</div>
			</div>		
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="totalPages"/></label>
				<div class="col-sm-3">
					<input type="text" name="totalPages" class="form-control" />
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="releaseDate"/></label>
				<div class="col-sm-3">
					<input type="text" name="releaseDate" class="form-control" />
				</div>
			</div>	
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="condition"/></label>
				<div class="col-sm-5">
					<input type="radio" name="condition" value="New" /><fmt:message key="condition_New"/>
					<input type="radio" name="condition" value="Old" /><fmt:message key="condition_Old"/>
					<input type="radio" name="condition" value="Refurbished" /><fmt:message key="conditon_Refurbished"/>
				</div>
			</div>				
            <div class="form-group row">
                <label class="col-sm-2"><fmt:message key="bookImage"/></label>
                <div class="col-sm-5">
                    <input type="file" name="bookImage" class="form-control">
                </div>
            </div>
			<div class="form-group row">
				<div class="col-sm-offset-2 col-sm-10">
					<input type="button" class="btn btn-primary" value="<fmt:message key='button'/>" onclick="checkAddBook()" />
					<a href="books.jsp" class="btn btn-warn"><fmt:message key="bookList"/></a>
				</div>
			</div>
		</form>
	</div>
	<!-- ================ 도서 등록 끝 ================ -->
	<jsp:include page="footer.jsp" />
	</fmt:bundle>
</body>
</html>