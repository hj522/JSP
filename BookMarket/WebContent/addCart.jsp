<%@page import="java.util.ArrayList"%>
<%@page import="dto.Book"%>
<%@page import="dao.BookRepository"%>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String id = request.getParameter("id");

	if(id==null || id.trim().equals("")) {
		response.sendRedirect("products.jsp");
		return;
	}
	
	BookRepository dao = BookRepository.getInstance();
	
	Book bk = dao.getBookById(id);
	
	if(bk == null) {
		response.sendRedirect("exceptionNoProductId.jsp");
	}
	
	ArrayList<Book> list = (ArrayList<Book>)session.getAttribute("cartlist");
	
	if(list == null) {
		list = new ArrayList<Book>();
		session.setAttribute("cartlist", list);
	}
	
	int cnt = 0;
	
	for(int i=0; i<list.size(); i++) {
		if(list.get(i).getBookId().equals(id)) {
			cnt++;
			list.get(i).setQuantity(list.get(i).getQuantity()+1);
		}
	}
	
	if(cnt==0) {
		bk.setQuantity(1);
		list.add(bk);
	}
	
	response.sendRedirect("book.jsp?id="+id);
%>