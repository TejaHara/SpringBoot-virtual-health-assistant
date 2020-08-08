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


@WebFilter(urlPatterns = {"/patient.jsp"})
public class PatientFilter implements Filter{

	@Override
	public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain)
			throws IOException, ServletException {
		System.out.println("in patientFilter");
		HttpServletRequest request = (HttpServletRequest)req;
		HttpServletResponse response = (HttpServletResponse)res;
		HttpSession session = request.getSession(false);
		if(session.getAttribute("patient")== null && session.getAttribute("admin") == null){
			response.sendRedirect("/homePage.jsp");
		}
		if(session.getAttribute("admin") != null) {
			response.sendRedirect("/admin.jsp");
		}	
		chain.doFilter(req, res);
	}
}