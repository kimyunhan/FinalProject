package com.mvc.insa;

import java.text.DateFormat;	
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mvc.insa.HomeController;
import com.mvc.insa.dto.CustomerDto;
import com.mvc.insa.model.biz.CustomerBiz;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@Autowired
	private CustomerBiz biz;

	@RequestMapping(value = "/home.do", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

		String formattedDate = dateFormat.format(date);

		model.addAttribute("serverTime", formattedDate);

		return "home";
	}
	@RequestMapping("/geolocation.do")
	public String geo() {
		return "geotest";
	}
	

	@RequestMapping("/list.do")
	public String SelectList(Model model) {
		logger.info("<<<list>>>");

		model.addAttribute("list", biz.selectList());

		return "list";
	}

	@RequestMapping("/insertform.do")
	public String insert() {

		return "insertform";
	}

	@RequestMapping("/insertres.do")
	public String insertres(@ModelAttribute CustomerDto dto) {

		int res = biz.insert(dto);

		if (res > 0) {
			return "redirect: list.do";
		} else {
			return "redirect: list.do";
		}

	}

	@RequestMapping("/selectone.do")
	public String selectOne(Model model, String id) {

		model.addAttribute("dto", biz.selectOne(id));

		return "detail";
	}
	
	@RequestMapping("/updateform.do")
	public String updateform(Model model, String id) {
		
		model.addAttribute("dto", biz.selectOne(id));
		
		return "updateform";
	}
	
	@RequestMapping("/update.do")
	public String update(@ModelAttribute CustomerDto dto ) {
		
		int res = biz.update(dto);
		
		if (res > 0) {
			return "redirect: selectone.do?id="+dto.getId();
		} else {
			return "redirect: selectone.do?id="+dto.getId();
		}
	}
	
	@RequestMapping("/delete.do")
	public String delete(String id) {
		
		int res = biz.delete(id);
		
		if (res > 0) {
			return "redirect: list.do";
		} else {
			return "redirect: list.do";
		}
	}
	
	@RequestMapping("/loginform.do")
	public String loginform() {
		
		return "login";
	}
	
	@RequestMapping("/login.do")
	@ResponseBody
	public Map<String, Boolean> login(String id, String pw, HttpSession session){
		
		/*
		 * @ResponsBody : java객체를 response 객체에 binding
		 * ? binding : 메서드와 객체를 묶어놓은 것
		 * ->
		 * @RequestBody : request객체로 넘어오는 데이터를 java 객체
		 */
		System.out.println("------------------------------------------------");
		
		CustomerDto dto = biz.login(id, pw);
		boolean loginChk = false;
		
		if(dto != null) {
			session.setAttribute("login", dto);
			loginChk = true;
		}
		
		Map<String, Boolean> map = new HashMap<String, Boolean>();
		map.put("loginChk", loginChk);
		System.err.println("loginchk : " + loginChk);
		return map;
	}
	
	@RequestMapping("/test.do")
	public String test() {
		biz.test();
		return "redirect:list.do";
		
	}
	
}
