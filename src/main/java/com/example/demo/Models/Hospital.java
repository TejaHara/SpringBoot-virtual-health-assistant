package com.example.demo.Models;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "hospitalInfo")
public class Hospital {

	@Id
	private String hid;
	private String hospitalName;
	private String speciality;
	private String phoneNum;
	private String address;
	private String activeHours;
	
	
	public String getHospitalDescription(){
		String hospitalDesc="    Lorem ipsum dolor sit amet, consectetur adipiscing elit,"
				+ " sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. "
				+ "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi"
				+ " ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit"
				+ " in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur"
				+ " sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt "
				+ "mollit anim id est laborum.";
		return hospitalDesc;
	}


	public String getHid() {
		return hid;
	}


	public void setHid(String hid) {
		this.hid = hid;
	}


	public String getHospitalName() {
		return hospitalName;
	}


	public void setHospitalName(String hospitalName) {
		this.hospitalName = hospitalName;
	}


	public String getSpeciality() {
		return speciality;
	}


	public void setSpeciality(String speciality) {
		this.speciality = speciality;
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
