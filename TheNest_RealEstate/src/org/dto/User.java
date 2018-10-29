package org.dto;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.Transient;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;

@Entity
@Table(name="users")
public class User implements Serializable{
	
	private int userId,status=1;
	private String firstName,lastName,email,password, username, repeatPassword ;
	private UserRole userRole;
	private Date enrollmentDate, updateDate;
	@Id
	@GeneratedValue
	
	@Column(name="user_id")
	public int getUserId() 
	{
		return userId;
	}
	public void setUserId(int userId) 
	{
		this.userId = userId;
	}
	
	@Column(name="first_name")
	public String getFirstName() 
	{
		return firstName;
	}
	public void setFirstName(String firstName) 
	{
		this.firstName = firstName;
	}
	
	@Column(name="last_name")
	public String getLastName()
	{
		return lastName;
	}
	public void setLastName(String lastName)
	{
		this.lastName = lastName;
	}
	
	@Column(name="email")
	public String getEmail()
	{
		return email;
	}
	public void setEmail(String email)
	{
		this.email = email;
	}
	@NotNull
	@Min(5) @Max(10)
	@Column(name="password", nullable=false)
	public String getPassword()
	{
		
		return password;
	}
	public void setPassword(String password)
	{
		//String cryptedPassword = new PasswordHasher().encode(password);
		//this.password = cryptedPassword;
		this.password=password;
	}
	
	@Transient
	public String getRepeatPassword() {
		return repeatPassword;
	}
	public void setRepeatPassword(String repeatPassword) {
		this.repeatPassword = repeatPassword;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	
	@Temporal(TemporalType.DATE)
	@Column(name="enrollment_date", nullable=false, updatable=false)
	public Date getEnrollmentDate() {
		return  enrollmentDate;
	}
	public void setEnrollmentDate(Date enrollmentDate) {
		this.enrollmentDate =enrollmentDate;
	}
	@OneToOne
	@JoinColumn(name="user_role_id")
	public UserRole getUserRole()
	{
		return userRole;
	}
	public void setUserRole(UserRole userRole)
	{
		this.userRole = userRole;
	}
	@Column(name="status",length=1,nullable=false)
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	
	@Temporal(TemporalType.DATE)
	@Column(name="update_date", nullable=true)
	public Date getUpdateDate() {
		return updateDate;
	}
	public void setUpdateDate(Date updateDate) {
		this.updateDate = updateDate;
	}
}
