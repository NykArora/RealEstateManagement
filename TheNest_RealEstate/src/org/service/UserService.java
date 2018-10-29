package org.service;

import java.util.Date;
import java.util.List;

import org.dao.IUser;
import org.dto.User;
import org.dto.UserRole;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.util.CamelCase;
import org.util.PasswordHasher;

@Service
public class UserService implements IUserService{
	
    @Autowired
	IUser  iuser;
	
	@Override
	public List<UserRole> getUserRoles() {
		
		List<UserRole> userRoles=iuser.getuserRoles();
		
		return userRoles;
	}

	@Override
	public User userLogin(User user) {
		user=iuser.userlogin(user);
		return user;
	}
	
	
	@Override
	public void saveUser(User user) {
	
		user.setFirstName(CamelCase.toCamelCase(user.getFirstName()));
		user.setLastName(CamelCase.toCamelCase(user.getLastName()));
		String cryptedPassword = new PasswordHasher().encode(user.getPassword());
		user.setPassword(cryptedPassword);
		user.setEnrollmentDate(new Date());
		user.setUpdateDate(new Date());
		iuser.saveUser(user);
		
	}
	
	
	@Override
	public List<User> getUserList() {
		List<User> users=iuser.getUserList();
		return users;
	}

	@Override
	public User getUserById(int id) {
		try{
			User user=iuser.getUserById(id);
			return user;
		}
		catch (Exception e) {
			return null;
		}
		
	}

	@Override
	public void updateUser(User user) {
	
	try
	{
		user.setFirstName(CamelCase.toCamelCase(user.getFirstName()));
		user.setLastName(CamelCase.toCamelCase(user.getLastName()));
	
		iuser.updateUser(user);
	}
	catch (Exception e)
	{
		
	}
	
}
	
	
	
	
	
}
