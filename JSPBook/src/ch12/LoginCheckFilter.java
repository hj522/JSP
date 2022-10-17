package ch12;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

public class LoginCheckFilter implements Filter {

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		
	}

	@Override
	public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain)
			throws IOException, ServletException {
			HttpServletRequest request = (HttpServletRequest) req;
			HttpServletResponse response = (HttpServletResponse) resp;
			
			// 세션 객체 생성하기
			HttpSession session = request.getSession();
			
			// 로그인이 안 되었음
			if(session == null) {
				response.sendRedirect("/ch12/loginForm.jsp");
			}
			// session.setAttribute("userID","admin"); 이것이 실행되어있어야 함
			String id = (String)session.getAttribute("userID");
			
			if(id==null) {
				response.sendRedirect("/ch12/loginForm.jsp");
			}
			chain.doFilter(req, resp);
		}

	@Override
	public void destroy() {
		
	}
}
