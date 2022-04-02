package com.sourkanji.sourkanjibackend.model;

import java.util.List;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "tb_person")
public class PersonModel  {
	
	
	@Column
	private String userName;
	
	@Column
	private String email;
	
	@Column
	private Long phoneNumber;
	
	@Column
	private String profilePicture;
	
	

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Long getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(Long phoneNumber) {
		this.phoneNumber = phoneNumber;
	}




/*	public List<Performance> shareProfilePerfomance(List<Performance>){
		return null;
	} */

}
