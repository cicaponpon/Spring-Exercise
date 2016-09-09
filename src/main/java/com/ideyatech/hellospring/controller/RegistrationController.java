package com.ideyatech.hellospring.controller;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.ideyatech.hellospring.entity.User;
import com.ideyatech.hellospring.validator.UserValidator;

@Controller
public class RegistrationController {
	
	@Autowired
	private UserValidator userValidator;
	
	@ModelAttribute(name = "user")
	public User initialUser() {
		return new User();
	}
	
	@RequestMapping(value ="/user")
	public String registrationForm() {
		return "registration-form";
	}
	
	@InitBinder
	public void initBinder(WebDataBinder binder){
		binder.registerCustomEditor(Date.class, new CustomDateEditor(new SimpleDateFormat("yyyy-MM-dd"),true));
		binder.addValidators(userValidator);
	}
	
	@RequestMapping(value="/user", method = RequestMethod.POST)
	public ModelAndView submitForm(@Valid @ModelAttribute User user, BindingResult bindingResult,ModelMap map) {
		
		if(bindingResult.hasErrors()){
			System.out.println("ERROR");
			return new ModelAndView("registration-form"); 
		}
		
		System.out.println("SUBMITTED");
		System.out.println("USER REGISTERED " + user);
		System.out.println(user.getRole());
		map.addAttribute("role", user.getRole());
		
		if(user.getRole().equals("admin")){
			return new ModelAndView("registration-form"); 
		}
			return new ModelAndView("add-skills");
	}

}
