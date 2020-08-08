package com.example.demo.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.Models.Admin;
import com.example.demo.service.loginService;

@Controller
public class AdminController {

	@Autowired
	private loginService loginService;
	
	
	@RequestMapping("/adminloginController")
	@ResponseBody
	public ModelAndView adminLogin(HttpServletRequest request) {
		System.out.println("in admincontroller");
		ModelAndView mv = new ModelAndView();
		String str = loginService.checkIfAdmin(request);
		System.out.println("back to admincontroller");
		if(str.equals("Admin")) {
			HttpSession session = request.getSession();
			Admin admin = loginService.getAdmin(request.getParameter("emailLogin"));
			if(admin != null) {
				loginService.initializeAdmin(session,admin);
				//loginService.getCovidInfo(request);
				System.out.println("admin redirection");
				mv.setViewName("redirect:/admin.jsp");
			}
		}
		else {
			System.out.println("in else mv login");
			mv = new ModelAndView("/error.jsp");
			mv.addObject("loginStatus",str);
		}
		return mv;
	}
}