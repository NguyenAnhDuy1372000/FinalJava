package com.yeet.enote.Controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.yeet.enote.Entities.User;
import com.yeet.enote.Entities.UserService;

@Controller
@RequestMapping("/")
public class HomeController {
	
	@Autowired
	UserService uservice;
	
	@RequestMapping(value = {"/","/home"},method = RequestMethod.GET)
	public String index() {
		return "user/index";
	}
	
	@RequestMapping(value = {"/login"},method = RequestMethod.GET)
	public String login() { 
		return "user/login";
	}
	
	@RequestMapping(value = {"/login"},method = RequestMethod.POST)
	public String logincheck(HttpServletRequest request, Model model, HttpSession session) { 
		String email = request.getParameter("uemail");
		String password = request.getParameter("upassword");
		
		if(uservice.login(email, password)) {
			return "redirect:/";
		}else {
			return "user/loginfail";
		}	
	}
	
	@RequestMapping(value = {"/register"},method = RequestMethod.POST)
	public String registernew(HttpServletRequest request, Model model, HttpSession session) { 
		String email = request.getParameter("uemail");
		String password = request.getParameter("upassword");
		String name = request.getParameter("fname");
		
		User user = new User();
		user.setEmail(email);
		user.setPassword(password);
		user.setName(name);
		
		uservice.save(user);
		
		return "user/login";
	}
	
	
	@RequestMapping(value = {"/register"},method = RequestMethod.GET)
	public String register() {
		return "user/registerdk";
	}
}
