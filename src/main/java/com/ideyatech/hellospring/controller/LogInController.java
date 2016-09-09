package com.ideyatech.hellospring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.ideyatech.hellospring.entity.User;

@Controller
public class LogInController {
	@ModelAttribute(name = "login")
	public User initialUser() {
		return new User();
	}
	
	@RequestMapping(value ="/login")
	public String loginForm() {
		return "login-form";
	}
	
	@RequestMapping(value="/login", method = RequestMethod.POST)
	public ModelAndView submitForm(@ModelAttribute User user) {
		System.out.println("LOG IN!");
	
		return new ModelAndView("redirect:/user");
	}

}
