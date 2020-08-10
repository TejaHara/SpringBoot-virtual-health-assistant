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


@WebFilter(urlPatterns = {"/admin*"})
public class AdminFilter implements Filter{

	@Override
	public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain)
			throws IOException, ServletException {
		System.out.println("in adminFilter");
		HttpServletRequest request = (HttpServletRequest)req;
		HttpServletResponse response = (HttpServletResponse)res;
		HttpSession session = request.getSession(false);
		if(session.getAttribute("Patient")== null && session.getAttribute("Doctor")== null &&session.getAttribute("Laboratory")== null && session.getAttribute("Admin") == null){
			response.sendRedirect("/homePage.jsp");
		}
		if(session.getAttribute("Patient") != null) {
			response.sendRedirect("/patient.jsp");
		}
		if(session.getAttribute("Doctor") != null) {
			response.sendRedirect("/doctor.jsp");
		}
		if(session.getAttribute("Laboratory") != null) {
			response.sendRedirect("/laboratory.jsp");
		}
		chain.doFilter(req, res);
	}
}