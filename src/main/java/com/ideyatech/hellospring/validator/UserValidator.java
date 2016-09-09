package com.ideyatech.hellospring.validator;


import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.ideyatech.hellospring.entity.User;

@Component
public class UserValidator implements Validator{
	 private Pattern pattern;
	 private Matcher matcher;

	 private static final String EMAIL_PATTERN = "^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@"
	   + "[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$";
		@Override
		public boolean supports(Class<?> clazz){
			return User.class.isAssignableFrom(clazz);
		}

		@Override
		public void validate(Object target, Errors errors) {
			// TODO Auto-generated method stub
			
			//empty forms validations
			ValidationUtils.rejectIfEmptyOrWhitespace(errors, "firstName", "error.required", new Object[]{"First Name"});
			ValidationUtils.rejectIfEmptyOrWhitespace(errors, "lastName", "error.required", new Object[]{"Last Name"});
			ValidationUtils.rejectIfEmptyOrWhitespace(errors, "birthDate", "error.required", new Object[]{"Birthday"});
			ValidationUtils.rejectIfEmptyOrWhitespace(errors, "email", "error.required", new Object[]{"Email"});
			ValidationUtils.rejectIfEmptyOrWhitespace(errors, "password", "error.required", new Object[]{"Password"});
			ValidationUtils.rejectIfEmptyOrWhitespace(errors, "confirmPassword", "error.required", new Object[]{"Confirm Password"});
		
			//password validator
			User user = (User) target;			
			if(!(user.getPassword().equals(user.getConfirmPassword()))){
				errors.rejectValue("password", "error.password-notmatch");
			}
			
			//email validator
			if (!(user.getEmail() != null && user.getEmail().isEmpty())) {
			  pattern = Pattern.compile(EMAIL_PATTERN);
			  matcher = pattern.matcher(user.getEmail());
			 if (!matcher.matches()) {
			   errors.rejectValue("email", "email.incorrect");
			 }
			}
		}
		
		
}
