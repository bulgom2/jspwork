package ch12;

import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.*;
import javax.servlet.*;

public class LogFileFilter implements Filter {
	
	PrintWriter writer;
	
	public void init(FilterConfig filterConfig) throws ServletException {
		String filename = filterConfig.getInitParameter("filename");
		if (filename == null) throw new ServletException("로그 파일의 이름을 찾을 수 없습니다.");
		try {
			writer = new PrintWriter(new FileWriter(filename, true), true);	
		} catch (IOException e) {
			throw new ServletException("로그 파일을 열 수 없습니다.");
		}
	}
	
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain filterChain) throws IOException, ServletException {
		writer.printf("현재 일시: %s %n", getCurrentTime());
		String clientAddr = request.getRemoteAddr();
		writer.printf("클라이언트 주소: %s %n", clientAddr);
		
		filterChain.doFilter(request,  response);
		
		String contentType = response.getContentType();
		writer.printf("문서의 콘텐츠 유형: %s %n", contentType);
		writer.printf("--------------------------------------");
	}
		
	public void destroy() {
		writer.close();
	}
	
	private String getCurrentTime() {
		DateFormat formatter = new SimpleDateFormat("yyy/MM/dd HH:mm:ss");
		Calendar calendar = Calendar.getInstance();
		calendar.setTimeInMillis(System.currentTimeMillis());
		return formatter.format(calendar.getTime());
	}
}
