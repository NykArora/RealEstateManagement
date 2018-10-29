package org.validator;

import org.dto.User;
import org.dto.UserRole;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;
@Component("uservalidator")
public class UserValidetor implements Validator {

	@Override
	public boolean supports(Class<?> clazz) {
		// TODO Auto-generated method stub
		return User.class.isAssignableFrom(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		User user=(User)target;
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "firstName","avcc" );
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "email","email.required" );
		UserRole userRole=user.getUserRole();
		if(userRole.getUserRoleId()==-1)
		{
			errors.rejectValue("userRole.userRoleId", "userRole.userRoleId.select");
		}
		
	}

}
