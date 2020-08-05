package com.example.demo.Models;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "lab_info")
public class Laboratory {

	private String lid;
	private String laboratoryName;
	private String specialty;
	private String phoneNum;
	private String address;
	private String activeHours;
	@Id
	private String email;
	private String password;
	
	
	public String getLaboratoryDescription(){
		String laboratoryDesc="    Lorem ipsum dolor sit amet, consectetur adipiscing elit,"
				+ " sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. "
				+ "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi"
				+ " ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit"
				+ " in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur"
				+ " sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt "
				+ "mollit anim id est laborum.";
		return laboratoryDesc;
	}

	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}

	public String getLid() {
		return lid;
	}


	public void setLid(String lid) {
		this.lid = lid;
	}


	public String getLaboratoryName() {
		return laboratoryName;
	}


	public void setLaboratoryName(String laboratoryName) {
		this.laboratoryName = laboratoryName;
	}


	public String getSpecialty() {
		return specialty;
	}


	public void setSpecialty(String speciality) {
		this.specialty = speciality;
	}


	public String getPhoneNum() {
		return phoneNum;
	}


	public void setPhoneNum(String phoneNum) {
		this.phoneNum = phoneNum;
	}


	public String getAddress() {
		return address;
	}


	public void setAddress(String address) {
		this.address = address;
	}


	public String getActiveHours() {
		return activeHours;
	}


	public void setActiveHours(String activeHours) {
		this.activeHours = activeHours;
	}
	
	
}
