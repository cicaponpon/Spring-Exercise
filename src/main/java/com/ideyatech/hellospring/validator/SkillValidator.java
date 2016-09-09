package com.ideyatech.hellospring.validator;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.ideyatech.hellospring.entity.Skill;

@Component
public class SkillValidator implements Validator{
	
		public boolean supports(Class<?> clazz){
			return Skill.class.isAssignableFrom(clazz);
		}

		@Override
		public void validate(Object target, Errors errors) {
			// TODO Auto-generated method stub
			
			//empty forms validations
			ValidationUtils.rejectIfEmptyOrWhitespace(errors, "skill", "error.required", new Object[]{"Skill"});
			ValidationUtils.rejectIfEmptyOrWhitespace(errors, "rating", "error.required", new Object[]{"Rating"});
		}
		
		
}
