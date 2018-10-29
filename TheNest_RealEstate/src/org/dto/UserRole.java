package org.dto;



import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="user_role")
public class UserRole implements Serializable
{

	private int userRoleId;
	private String userRoleName;
	private String userRoleDescription;
	
	public UserRole(String userRoleDescription) {
		super();
		this.userRoleDescription = userRoleDescription;
	}


	public UserRole(){}
	

	public UserRole(int userRoleId, String userRoleName) {
		super();
		this.userRoleId = userRoleId;
		this.userRoleName = userRoleName;
	}
	@Id
	@GeneratedValue
	@Column(name="user_role_id")
	public int getUserRoleId() {
		return userRoleId;
	}
	public void setUserRoleId(int userRoleId) {
		this.userRoleId = userRoleId;
	}
	@Column(name="user_role_name" ,length=50)
	public String getUserRoleName() {
		return userRoleName;
	}
	public void setUserRoleName(String userRoleName) {
		this.userRoleName = userRoleName;
	}
	
	@Column(name="user_role_description" , length=100)
	public String getUserRoleDescription() {
		return userRoleDescription;
	}
	public void setUserRoleDescription(String userRoleDescription) {
		this.userRoleDescription = userRoleDescription;
	}
	
	
	
}
