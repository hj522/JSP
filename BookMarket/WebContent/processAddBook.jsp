<%@page import="java.io.File"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.DiskFileUpload"%>
<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="dto.Book"%>
<%@page import="dao.BookRepository"%>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("UTF-8");
	
	// 각오 단단히
	
	// 1) 어디에 저장할 것인가?
	String path = "E:\\A_TeachingMaterial\\6.JspSpring\\workspace\\BookMarket\\WebContent\\resources\\images";
	// 2) 파일 업로드 객체 생성
	DiskFileUpload upload = new DiskFileUpload();
	// 3) 환경설정		bit -> bytes -> Kbytes -> Mbytes -> Gbytes
	upload.setSizeMax(1000000); // 약 1Mbytes
	upload.setSizeThreshold(4096);	// 메모리 최대 크기(4M?)
	upload.setRepositoryPath(path); // 임시 저장 경로
	// 4) 폼 페이지의 item 받아오기. items -> {"productId":"P1237", "pname":"게이밍 마우스"...}
	List items = upload.parseRequest(request);
	// 5) 열거형 타입으로 변환
	Iterator params = items.iterator();
	
	String bookId = "";
	String name = "";
	String unitPrice = "";
	String author = "";
	String description = "";
	String publisher = "";
	String category = "";
	String unitsInStock = "";
	String totalPages = "";
	String releaseDate = "";
	String condition = "";
	
	int price = 0;
	int stock = 0;
	int pages = 0;
	
	String fileName = "";
	
	BookRepository dao = BookRepository.getInstance();
	
	while(params.hasNext()) {
		
		FileItem item = (FileItem)params.next();
		
		if(item.isFormField()) {
		
			if(item.getFieldName().equals("bookId")){
				bookId = item.getString("UTF-8");
			} else if(item.getFieldName().equals("name")){
				name = item.getString("UTF-8");
			} else if(item.getFieldName().equals("unitPrice")){
				unitPrice = item.getString("UTF-8");
				// 폼 페이지에서 도서 가격이 입력되지 않았다면 0으로 처리
				if(unitPrice.isEmpty()) {
					price = 0;
				} else {
					price =Integer.parseInt(unitPrice);
				}
			} else if(item.getFieldName().equals("author")){
				author = item.getString("UTF-8");
			} else if(item.getFieldName().equals("description")){
				description = item.getString("UTF-8");
			} else if(item.getFieldName().equals("publisher")){
				publisher = item.getString("UTF-8");
			} else if(item.getFieldName().equals("category")){
				category = item.getString("UTF-8");
			} else if(item.getFieldName().equals("unitsInStock")){
				unitsInStock = item.getString("UTF-8");
				if(unitsInStock.isEmpty()) {
					stock = 0;
				} else {
					stock = Integer.parseInt(unitsInStock);
				}
			} else if(item.getFieldName().equals("totalPages")){
				totalPages = item.getString("UTF-8");
				if(totalPages.isEmpty()) {
					pages = 0;
				} else {
					pages = Integer.parseInt(totalPages);
				}
			} else if(item.getFieldName().equals("releaseDate")){
				totalPages = item.getString("UTF-8");
			} else if(item.getFieldName().equals("condition")){
				totalPages = item.getString("UTF-8");
			} 
		} else {
			String fileFieldName = item.getFieldName();	// 요청 파라미터명(productImage)
			fileName = item.getName();	// 저장 파일명(P1237.png)
			String contentType = item.getContentType();	// images/jpeg
			// 순수한 파일명만 추출
			fileName = fileName.substring(fileName.lastIndexOf("\\")+1);
			long fileSize = item.getSize();	// 파일 크기
			// 파일 객체 생성(copy 설계)
			File file = new File(path + "/" + fileName);
			
			item.write(file);
			
			out.println("----------------------<br />");
			out.println("요청 파라미터 명: " + fileFieldName + "<br />");
			out.println("저장 파일 명: " + fileName + "<br />");
			out.println("파일 컨텐츠 타입: " + contentType + "<br />");
			out.println("파일 크기: " + fileSize + "<br />");
		}
	}

	Book book = new Book();
	book.setBookId(bookId);
	book.setName(name);
	book.setUnitPrice(price);
	book.setAuthor(author);
	book.setDescription(description);
	book.setPublisher(publisher);
	book.setCategory(category);
	book.setUnitsInStock(stock);
	book.setTotalPages(pages);
	book.setReleaseDate(releaseDate);
	book.setCondition(condition);
	book.setFilename(fileName);
	
	dao.addBook(book);
	
	response.sendRedirect("books.jsp");
	
%>