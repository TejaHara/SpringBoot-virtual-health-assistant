package com.example.demo.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.Models.Patient;
import com.example.demo.service.loginService;

@Controller
public class PatientController {
	@Autowired
	private loginService loginService;

	@RequestMapping("/patientloginController")
	@ResponseBody
	public ModelAndView login(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		System.out.println("in login");
		String str = loginService.login(request);
		if (str.equals("Patient")) {
			System.out.println("patinet confirmed");
			HttpSession session = request.getSession();
			Patient patient = loginService.getPatient(request.getParameter("emailLogin"));
			session.setAttribute("patient", patient);
			mv.setViewName("redirect:/patient.jsp");
		}
		else {
			mv = new ModelAndView("/homePage.jsp");
			mv.addObject("loginStatus",str);
		}
		return mv;
	}
}
