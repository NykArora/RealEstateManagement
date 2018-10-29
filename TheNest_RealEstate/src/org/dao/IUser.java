package org.dao;

import java.util.List;

import org.dto.User;
import org.dto.UserRole;

public interface IUser {
	
	List<UserRole> getuserRoles();

	User userlogin(User user);

	void saveUser(User user);

	List<User> getUserList();

	User getUserById(int id);

	void updateUser(User user);
	
	
}
