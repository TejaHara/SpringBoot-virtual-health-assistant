package com.example.demo.Filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebFilter(urlPatterns = {"homePage.jsp", "index.jsp"})
public class LoginFilter implements Filter{

	@Override
	public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain)
			throws IOException, ServletException {
		System.out.println("In loginFilter");
		HttpServletRequest request = (HttpServletRequest)req;
		HttpServletResponse response = (HttpServletResponse)res;
		HttpSession session = request.getSession(false);
		
		if(session != null && session.getAttribute("Patient") != null) {
			response.sendRedirect("/patient.jsp");
		}
		else if(session != null && session.getAttribute("Doctor") != null) {
			response.sendRedirect("/doctor.jsp");
		}
		else if(session != null && session.getAttribute("Laboratory") != null) {
			response.sendRedirect("/laboratory.jsp");
		}
		else if(session != null && session.getAttribute("Admin") != null) {
			response.sendRedirect("/admin.jsp");
		}
		chain.doFilter(request, response);
	}
}
