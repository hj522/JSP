package ch12;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class InitParamFilter implements Filter {

	/*
 	<init-param>
		<param-name>param1</param-name>
		<param-value>admin</param-value>
	</init-param>
	<init-param>
		<param-name>param2</param-name>
		<param-value>1234</param-value>
	</init-param>
	*/
	
	private FilterConfig filterConfig = null;

	// filterConfig <- {"param1:":"admin","param2":"1234"}
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		System.out.println("Filter02 초기화..");
		this.filterConfig = filterConfig;
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		// 사용자가 입력한 정보가 request객체에 들어있음
		// filter02_process.jsp?id=admin&passwd=1234
		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");
		
		// web.xml에서 InitParameter로 넘어온 값
		String param1 = filterConfig.getInitParameter("param1");	// admin
		String param2 = filterConfig.getInitParameter("param2");	// 1234
		
		String message;
		
		// 한글이 깨지지 않도록 응답객체에 한글 인코딩 처리~!
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8"); // MIME(마임)타입
		// jsp에 message를 보내주기 위함
		PrintWriter writer = response.getWriter();
		
		if(id.equals(param1) && passwd.equals(param2)) {
			message = "로그인 성공!";
		} else {
			message = "로그인 실패..";
		}
		
		writer.println(message);
		
		chain.doFilter(request, response);	// 필터가 여러 개일 때 다음 필터로 제어권을 넘겨줌
	}

	@Override
	public void destroy() {
		System.out.println("Filter02 해제..");
	}
}
