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
	public ModelAndView patientLogin(HttpServletRequest request) {
		System.out.println("in patientController");
		ModelAndView mv = new ModelAndView();
		String str = loginService.checkIfPatient(request);
		System.out.println("back to patientController");
		if(str.equals("Patient")) {
			HttpSession session = request.getSession();
			Patient patient = loginService.getPatient(request.getParameter("emailLogin"));
			if(patient != null) {
				loginService.initializePatient(session,patient);
				//loginService.getCovidInfo(request);
				System.out.println("patient redirection");
				mv.setViewName("redirect:/patient.jsp");
			}
		}
		else {
			System.out.println("in else patientLoginController");
			mv = new ModelAndView("/error.jsp");
			mv.addObject("loginStatus",str);
		}
		return mv;
	}
}
