package com.mvc.insa.common.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.mvc.insa.common.filter.LogFilter;

public class LogFilter implements Filter {

	private Logger logger = LoggerFactory.getLogger(LogFilter.class);

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		// TODO Auto-generated method stub

	}

//  FilterChain chain ??
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {

		HttpServletRequest req = (HttpServletRequest) request;
		String RemoteAddr = StringUtils.defaultString(req.getRemoteAddr());
		// IPv6의 형태로 ip값을 반환 클라이언트의 ip
		String uri = StringUtils.defaultString(req.getRequestURI());
		// 경로 - /mvc/detail.do - 컨트롤러 맵핑
		String url = StringUtils.defaultString(req.getRequestURL().toString());
		// 주소 http://localhost:8787/mvc/detail.do
		String queryString = StringUtils.defaultString(req.getQueryString());
		// query문 보여주는거
		String referer = StringUtils.defaultString(req.getHeader("referer"));
		// http://localhost:8787/mvc/list.do 현재 요청된 페이지의 링크 이전의 웹 페이지 주소를 포함
		String agent = StringUtils.defaultString(req.getHeader("User-Agent"));
		// agent : Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) User와 Agent의 os및 브라우저 등 의 정보를 파싱하여 보여줌

		StringBuffer result = new StringBuffer();
		result.append(" | ")
			  .append(RemoteAddr) // ip : 접속자 ip(localhost)
			  .append(uri) // mvc/list.do
			  .append(" (").append(url) // http://192.168.10.33:8787/mvc/list.do
			  .append("?" + queryString) // ?id=admin
			  .append(") ").append(referer) // http://192.168.10.33:8787/mvc/lost.do
			  .append(" | ").append(agent); //
		logger.info("LOG FILTER " + result.toString());

//		클라이언트에서 서버로 요청하는 그사이에 필터가 들어가서 위에 로그가 찍히고 아래 chain.doFilter()를통해서 응답
		chain.doFilter(req, response);

	}

	@Override
	public void destroy() {
		// TODO Auto-generated method stub

	}

}
