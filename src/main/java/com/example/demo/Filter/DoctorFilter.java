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


@WebFilter(urlPatterns = {"/doctor.jsp"})
public class DoctorFilter implements Filter{

	@Override
	public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain)
			throws IOException, ServletException {
		System.out.println("in doctorFilter");
		HttpServletRequest request = (HttpServletRequest)req;
		HttpServletResponse response = (HttpServletResponse)res;
		HttpSession session = request.getSession(false);
		if(session.getAttribute("Patient")== null && session.getAttribute("Doctor")== null &&session.getAttribute("Laboratory")== null && session.getAttribute("Admin") == null){
			response.sendRedirect("/homePage.jsp");
		}
		if(session.getAttribute("Admin") != null) {
			response.sendRedirect("/admin.jsp");
		}
		if(session.getAttribute("patient") != null) {
			response.sendRedirect("/patient.jsp");
		}
		if(session.getAttribute("Laboratory") != null) {
			response.sendRedirect("/laboratory.jsp");
		}
		chain.doFilter(req, res);
	}
}