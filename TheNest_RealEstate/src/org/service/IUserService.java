package org.service;

import java.util.List;

import org.dto.User;
import org.dto.UserRole;

public interface IUserService {

List<UserRole> getUserRoles();

User userLogin(User user);

void saveUser(User user);

List<User> getUserList();

User getUserById(int id);

void updateUser(User user);

}
