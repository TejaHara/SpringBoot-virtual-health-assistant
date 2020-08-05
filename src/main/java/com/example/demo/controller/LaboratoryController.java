package com.example.demo.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.Models.Laboratory;
import com.example.demo.Models.Patient;
import com.example.demo.service.loginService;

@Controller
public class LaboratoryController {
	@Autowired
	private loginService loginService;

	@RequestMapping("/laboratoryLoginController")
	@ResponseBody
	public ModelAndView laboratoryLogin(HttpServletRequest request) {
		System.out.println("in laboratoryController");
		ModelAndView mv = new ModelAndView();
		String str = loginService.checkIfLaboratory(request);
		System.out.println("back to laboratoryController");
		if(str.equals("Laboratory")) {
			HttpSession session = request.getSession();
			Laboratory laboratory = loginService.getLaboratory(request.getParameter("emailLogin"));
			if(laboratory != null) {
				loginService.initializeLaboratory(session,laboratory);
				//loginService.getCovidInfo(request);
				System.out.println("laboratory redirection");
				mv.setViewName("redirect:/laboratory.jsp");
			}
		}
		else {
			System.out.println("in else laboratoryLoginController");
			mv = new ModelAndView("/homePage.jsp");
			mv.addObject("loginStatus",str);
		}
		return mv;
	}
}
