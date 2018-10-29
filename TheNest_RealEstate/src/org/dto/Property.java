package org.dto;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="property")
public class Property implements Serializable {
	
	
	 private int propertyId,status=1;
	 private String propertyname,propertycategory,propertydescription,propertyimage,properyprize;
	 
	 
	 @Id
	 @GeneratedValue
	 @Column(name="property_id")
	public int getPropertyId() {
		return propertyId;
	}
	public void setPropertyId(int propertyId) {
		this.propertyId = propertyId;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	
	 @Column(name="propertyname")
	public String getPropertyname() {
		return propertyname;
	}
	public void setPropertyname(String propertyname) {
		this.propertyname = propertyname;
	}
	 @Column(name="propertycategory")
	public String getPropertycategory() {
		return propertycategory;
	}
	public void setPropertycategory(String propertycategory) {
		this.propertycategory = propertycategory;
	}
	
	
	 @Column(name="propertydescription")
	public String getPropertydescription() {
		return propertydescription;
	}
	public void setPropertydescription(String propertydescription) {
		this.propertydescription = propertydescription;
	}
	
	 @Column(name="propertyimage")
	public String getPropertyimage() {
		return propertyimage;
	}
	public void setPropertyimage(String propertyimage) {
		this.propertyimage = propertyimage;
	}
	
	
	@Column(name="propertyprize")
	public String getProperyprize() {
		return properyprize;
	}
	public void setProperyprize(String properyprize) {
		this.properyprize = properyprize;
	}
	
	
	
	
	

}
