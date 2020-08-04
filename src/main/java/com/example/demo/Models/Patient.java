package com.example.demo.Models;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.springframework.beans.factory.annotation.Autowired;

@Entity
@Table(name = "patientInfo")
public class Patient {

	@Id
	private String email;
	private String id;
	private String pid;
	private String password;

	private String fullName;
	private String weight;
	private String age;
	private String phoneNum;
	private String gender;
	private String address;
	private String docID;
	private String hospitalID;
	private String reportsID;
	private String status="BeingTreated";
	


	@Autowired
	@OneToOne(targetEntity = ConfirmationToken.class, fetch = FetchType.EAGER)
	@JoinColumn(nullable = false,name = "email")
	private ConfirmationToken token;
	
	
	public String getCaseDescription(){
		String caseDesc="    Lorem ipsum dolor sit amet, consectetur adipiscing elit,"
				+ " sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. "
				+ "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi"
				+ " ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit"
				+ " in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur"
				+ " sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt "
				+ "mollit anim id est laborum.";
		return caseDesc;
	}

	public String getDocID() {
		return docID;
	}
	public void setDocID(String docID) {
		this.docID = docID;
	}
	public String getHospitalID() {
		return hospitalID;
	}
	public void setHospitalID(String hospitalID) {
		this.hospitalID = hospitalID;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPid() {
		return pid;
	}
	public void setPid(String pid) {
		this.pid = pid;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getFullName() {
		return fullName;
	}
	public void setFullName(String fullName) {
		this.fullName = fullName;
	}
	public String getWeight() {
		return weight;
	}
	public void setWeight(String weight) {
		this.weight = weight;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public String getPhoneNum() {
		return phoneNum;
	}
	public void setPhoneNum(String phoneNum) {
		this.phoneNum = phoneNum;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}

	public String getReportsID() {
		return reportsID;
	}

	public void setReportsID(String reportsID) {
		this.reportsID = reportsID;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

}