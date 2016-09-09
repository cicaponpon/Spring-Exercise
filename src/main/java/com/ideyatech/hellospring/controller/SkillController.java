package com.ideyatech.hellospring.controller;


import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.ideyatech.hellospring.entity.Skill;
import com.ideyatech.hellospring.repository.SkillRepository;
import com.ideyatech.hellospring.validator.SkillValidator;

@Controller
public class SkillController {

	@Autowired
	private SkillValidator skillValidator;
	
	@Autowired
	private SkillRepository skillRepository;
	
	@ModelAttribute(name="skill")
	public Skill initialSkill(){
		return new Skill();
	}
	@RequestMapping(value ="/skill")
	public String skillForm() {
		return "add-skills";
	}
	
	@InitBinder
	public void initBinder(WebDataBinder binder){
		binder.addValidators(skillValidator);
	}
	
	@RequestMapping(value="/skill", method = RequestMethod.POST,produces = {"application/json"},consumes = {"application/json"})
	public ModelAndView submitForm(@Valid @ModelAttribute Skill skill, BindingResult bindingResult,ModelMap map) {

		skillValidator.validate(skill,bindingResult);
		
		if(bindingResult.hasErrors()){
			System.out.println("ERROR");
			return new ModelAndView("registration-form"); 
		}
		
		System.out.println("SUBMITTED");
		System.out.println("SKILL ADDED " + skill);
		
		skillRepository.save(skill);
		return new ModelAndView("add-skills");
	}
}
