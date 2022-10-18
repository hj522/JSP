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
		response.sendRedirect("exceptionNoBookId.jsp");
		return;
	}
	
	ArrayList<Book> cartlist = (ArrayList<Book>)session.getAttribute("cartlist");
	
	for(int i=0; i<cartlist.size(); i++) {
		if(cartlist.get(i).getBookId().equals(id)) {
			cartlist.remove(cartlist.get(i));
		}
	}
	
	for(Book vo : cartlist) {
		out.println("<p>vo: " + vo.toString() + "</p>");
	}
	
	response.sendRedirect("cart.jsp");
%>