package com.ideyatech.hellospring.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.ideyatech.hellospring.entity.User;
import com.ideyatech.hellospring.repository.UserRepository;
import com.ideyatech.hellospring.validator.UserValidator;

@Controller
public class RegistrationController {
	
	@Autowired
	private UserValidator userValidator;
	
	@Autowired
	private UserRepository userRepository;
	
	
	@ModelAttribute(name = "user")
	public User initialUser() {
		return new User();
	}
	
	@RequestMapping(value ="/user")
	public String registrationForm() {
		return "registration-form";
	}
	
	@RequestMapping(value="/user/{id}")
	public @ResponseBody String getUser(@PathVariable("id") Long id){
		return userRepository.findOne(id).toString();
	}

	@RequestMapping(value="/user/list")
	public ModelAndView getUsersList(ModelMap map){
		List<User> users = userRepository.findAll();
		map.addAttribute("user", users);
		return new ModelAndView("user-list"); 
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
		
		userRepository.save(user);
		map.addAttribute("role", user.getRole());		
		if(user.getRole().equals("admin")){
//			return getUsersList(map); 
			return new ModelAndView("redirect:/user/list");
		}
			return new ModelAndView("add-skills");
	}

}
