package com.example.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class SessionInterceptor extends HandlerInterceptorAdapter {
	static Logger logger = LoggerFactory.getLogger(SessionInterceptor.class);
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler,HttpSession session) throws Exception{
	
	logger.trace("세션필터를 거칩니다");
		if (session.getAttribute("Users") == null) {
			logger.trace("현재 User의 값 : {}",session.getAttribute("Users"));
			response.sendRedirect(request.getContextPath() + "/login");
		}
		
		return true;
	}
}
