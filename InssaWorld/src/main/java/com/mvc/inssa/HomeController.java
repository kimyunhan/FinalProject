package com.mvc.inssa;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value = "/home.do")
	public String home(Locale locale, Model model) {
		logger.info("Welcome home!");
		
		return "home";
	}
	@RequestMapping(value ="/loginForm.do")
	public String loginFor(Locale locale, Model model) {
		logger.info("Welcome Login Form!");
		
		return "loginForm";
	}
	@RequestMapping(value = "/start")
	public String start(Locale locale, Model model) {
		logger.info("Welcome start");
		
		return "start";
	}
	
	
	
//	@RequestMapping(value = "/accessDenied.do")
//	public String accessDenied(Locale locale, Model model) {
//		logger.info("Welcome Access Denied!");
//		
//		return "accessDenied";
//	}
//	
//
//
//	
//	@RequestMapping(value = "/intro/introduction.do", method = RequestMethod.GET)
//	public String introduction(Locale locale, Model model) {
//		logger.info("Welcome Introduction!");
//		
//		return "intro/introduction";
//	}
	@RequestMapping("/signUp")
	public String signUp(Locale locale, Model model) {
		logger.info("Welcome signUp!");
		
		return "sign_up";
	}
}
