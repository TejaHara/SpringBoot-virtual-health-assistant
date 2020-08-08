package com.example.demo.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.Models.Doctor;
import com.example.demo.Models.Patient;
import com.example.demo.service.loginService;

@Controller
public class DoctorController {
	@Autowired
	private loginService loginService;

	@RequestMapping("/doctorloginController")
	@ResponseBody
	public ModelAndView doctorLogin(HttpServletRequest request) {
		System.out.println("in doctorController");
		ModelAndView mv = new ModelAndView();
		String str = loginService.checkIfDoctor(request);
		System.out.println("back to doctorController");
		if(str.equals("Doctor")) {
			HttpSession session = request.getSession();
			Doctor doctor = loginService.getDoctor(request.getParameter("emailLogin"));
			if(doctor != null) {
				loginService.initializeDoctor(session,doctor);
				//loginService.getCovidInfo(request);
				System.out.println("doctor redirection");
				mv.setViewName("redirect:/doctor.jsp");
			}
		}
		else {
			System.out.println("in else doctorLoginController");
			mv = new ModelAndView("/error.jsp");
			mv.addObject("loginStatus",str);
		}
		return mv;
	}
}
