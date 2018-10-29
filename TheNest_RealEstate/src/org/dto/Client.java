package org.dto;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.Transient;

@Entity
@Table(name="client")
public class Client implements Serializable {
	
	private int clientId,status,age;
	 
	 private String firstName,middelName,lastName,contactNumber,secoundaryContactNumber,email,Address,Address1,location,zip,city,state,sex,maritalStatus,type_of_transaction,Area_of_interest,Area_of_land,Budget;
	
	 private Date dob,enrollment,lastVisitDate,updateDate;
	 

	
     @Id
	 @GeneratedValue
	 @Column(name="client_id")
	 public int getClientId() {
		return clientId;
	}

    public void setClientId(int clientId) {
		this.clientId = clientId;
	}
	
	
	@Column(name="status",length=1, nullable=false )
    public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	@Transient
	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	
	@Column(name="first_name",length=50)
	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	@Column(name="middle_name",length=50)
	public String getMiddelName() {
		return middelName;
	}

	public void setMiddelName(String middelName) {
		this.middelName = middelName;
	}
	@Column(name="last_name",length=50)
	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	@Column(name="contact_number",length=50)
	public String getContactNumber() {
		return contactNumber;
	}

	public void setContactNumber(String contactNumber) {
		this.contactNumber = contactNumber;
	}
	
	@Column(name="secound_contact_number",length=50)
	public String getSecoundaryContactNumber() {
		return secoundaryContactNumber;
	}

	public void setSecoundaryContactNumber(String secoundaryContactNumber) {
		this.secoundaryContactNumber = secoundaryContactNumber;
	}


	@Column(name="email",length=100)
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	@Column(name="address",length=100)
	public String getAddress() {
		return Address;
	}

	public void setAddress(String address) {
		Address = address;
	}
	
	
    public String getZip() {
		return zip;
	}

	public void setZip(String zip) {
		this.zip = zip;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

    @Column(name="sex",length=5)
	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	
	@Column(name="marital_status" , length=10)
	public String getMaritalStatus() {
		return maritalStatus;
	}

	public void setMaritalStatus(String maritalStatus) {
		this.maritalStatus = maritalStatus;
	}

	@Column(name="type_of_transaction") 
	public String getType_of_transaction() {
		return type_of_transaction;
	}

	public void setType_of_transaction(String type_of_transaction) {
		this.type_of_transaction = type_of_transaction;
	}

	@Column(name="Area_of_interest") 
	public String getArea_of_interest() {
		return Area_of_interest;
	}

	public void setArea_of_interest(String area_of_interest) {
		Area_of_interest = area_of_interest;
	}
	
	
	
	@Column(name="Area_of_land")
	public String getArea_of_land() {
		return Area_of_land;
	}

	public void setArea_of_land(String area_of_land) {
		Area_of_land = area_of_land;
	}
	

	@Column(name="location")
	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}


	
	
	@Column(name="Budget")
    public String getBudget() {
		return Budget;
	}

	public void setBudget(String budget) {
		Budget = budget;
	}

		@Column(name="dob")
	    @Temporal(TemporalType.DATE)
	    public Date getDob() {
			return dob;
		}

		public void setDob(Date dob) {
			this.dob = dob;
		}

		@Temporal(TemporalType.DATE)
		public Date getEnrollment() {
			return enrollment;
		}

		public void setEnrollment(Date enrollment) {
			this.enrollment = enrollment;
		}

		@Temporal(TemporalType.DATE)
		public Date getLastVisitDate() {
			return lastVisitDate;
		}

		public void setLastVisitDate(Date lastVisitDate) {
			this.lastVisitDate = lastVisitDate;
		}

		@Temporal(TemporalType.DATE)
		@Column(name="update_date", nullable=true)
		public Date getUpdateDate() {
			return updateDate;
		}
		public void setUpdateDate(Date updateDate) {
			this.updateDate = updateDate;
		}

		@Column(name="address1",length=100)
		public String getAddress1() {
			return Address1;
		}

		public void setAddress1(String address1) {
			Address1 = address1;
		}
	
}
