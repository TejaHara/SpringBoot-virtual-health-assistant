package com.example.demo.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class univController {

	@RequestMapping("/home")
	public String home() {
		System.out.println("in homeController");
		return "homePage.jsp";
	}
	
	
	@RequestMapping("/logout")
	public String destroySession(HttpServletRequest request) {
		System.out.println("in logout");
		request.getSession().invalidate();
		return "redirect:/homePage.jsp";
	}
}