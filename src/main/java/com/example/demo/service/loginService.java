package com.example.demo.service;

import java.io.File;
import java.nio.charset.StandardCharsets;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Arrays;
import java.util.Enumeration;
import java.util.List;

import javax.persistence.Id;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.Models.Admin;
import com.example.demo.Models.Doctor;
import com.example.demo.Models.Laboratory;
import com.example.demo.Models.Patient;
import com.example.demo.Repository.AppConstants;
import com.example.demo.Repository.PatientRepository;


@Service
public class loginService {

	

	/**************************************************************************************************************/
	
	static {
		try {
			Class.forName(AppConstants.DB_DRIVER);
		} catch (ClassNotFoundException e) {
			System.out.println(e);
		}
	}
	
	/**********************************************************************************************************************************/
/*	public  String login(HttpServletRequest request) {
		System.out.println("in login");
		String email = request.getParameter("emailLogin");
		Patient patient = patientRepository.findByEmailIgnoreCase(email);
		if (patient == null)
			return "No such email exists.. For admin login tick the box";
		else if (!patient.getPassword().equals(request.getParameter("passwordLogin")))
			return "Password is incorrect";
		
		return "Patient";
	}
	
	public Patient getPatient(String email) {
		System.out.println("in getPatient");
		return patientRepository.findByEmailIgnoreCase(email);
	}
	*/
	
	
	/*******************************Connection***************************************************************************************/

	
	public static Connection getConnection() throws SQLException {
		System.out.println("in getConnection");
		return DriverManager.getConnection(AppConstants.DB_URL, AppConstants.DB_USER, AppConstants.DB_PASSWORD);
	}
	
	public static void closeConnection(Connection con) {
		System.out.println("in closeConnection");
		if (con == null) {
			return;
		}
		try {
			con.close();
		} catch (SQLException e) {
			System.out.println(e);
		}
	}
	
	/***********************Admin Validation****************************************************************************************************/
	public static String checkIfAdmin(HttpServletRequest request) {
		try {
			System.out.println("checkIfAdmin");
			Connection con = getConnection();
			String email = request.getParameter("emailLogin");
			String query = "select password from "+AppConstants.TABLE_NAME+" where email=?";
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, email);
			ResultSet rs = ps.executeQuery();
			String password = "";
			if(rs.next()) {
				password = rs.getString(1);
				if(password.equals(request.getParameter("passwordLogin")))
					return "Admin";
				else
					return "Incorrect username/password";
			}			
		} catch (SQLException e) {
			System.out.println(e);
		}	
		return "Incorrect username/password";
	}
	
	public Admin getAdmin(String email) {
		System.out.println("getAdmin");
		try {
			Connection con = getConnection();
			String query = "select * from "+AppConstants.TABLE_NAME+" where email=?";
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, email);
			ResultSet rs = ps.executeQuery();
			Admin admin = null;
			System.out.println("back to getAdmin");
			if(rs.next()) {
			    admin = new Admin();
			    
				admin.setEmail(rs.getString("email"));
				admin.setFullName(rs.getString("fullName"));
				admin.setPassword(rs.getString("password"));
				admin.setGender(rs.getString("gender"));
				admin.setAddress(rs.getString("address"));
				admin.setPhoneNumber(rs.getString("phoneNum"));
				System.out.println("in loginservice");
			}
			return admin;
		}
		catch(Exception e){
			System.out.println(e);
		}
		return null;
	}
	
	public void initializeAdmin(HttpSession session,Admin admin) {
		System.out.println("in initializeAdmin");
		session.setAttribute("admin", admin);
		/*Admin Duty*/
	}
	
	
	
	/***********************Doctor Validation****************************************************************************************************/
	public String checkIfDoctor(HttpServletRequest request) {
		try {
			System.out.println("checkIfDoctor");
			Connection con = getConnection();
			String email = request.getParameter("emailLogin");
			String query = "select password from "+AppConstants.DOCTOR_TABLE+" where email=?";
			System.out.println("after fetching doctor login details");
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, email);
			ResultSet rs = ps.executeQuery();
			String password = "";
			if(rs.next()) {
				System.out.println("in checkIfDoctor if statement");
				password = rs.getString(1);
				if(password.equals(request.getParameter("passwordLogin")))
					return "Doctor";
				else
					return "Incorrect username/password";
			}
			else {
				System.out.println("checkIfDoctor else");
			}
		} catch (SQLException e) {
			System.out.println(e);
		}	
		return "Incorrect username/password";
	}
	
	public Doctor getDoctor(String email) {
		System.out.println("getDoctor");
		try {
			Connection con = getConnection();
			String query = "select * from "+AppConstants.DOCTOR_TABLE+" where email=?";
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, email);
			ResultSet rs = ps.executeQuery();
			Doctor doctor = null;
			System.out.println("back to getDoctor");
			if(rs.next()) {
				doctor = new Doctor();
			    
				doctor.setEmail(rs.getString("email"));
				doctor.setDocid(rs.getString("docid"));
				doctor.setHid(rs.getString("hid"));
				doctor.setSpecialty(rs.getString("specialty"));
				doctor.setAge(rs.getString("age"));
				doctor.setActiveHours(rs.getString("ActiveHours"));
				doctor.setHospital(rs.getString("hospital"));
				doctor.setFullName(rs.getString("fullName"));
				doctor.setPassword(rs.getString("password"));
				doctor.setGender(rs.getString("gender"));
				doctor.setAddress(rs.getString("address"));
				doctor.setPhoneNum(rs.getString("phoneNum"));
				System.out.println("in end of getDoctor");
			}
			return doctor;
		}
		catch(Exception e){
			System.out.println(e);
		}
		return null;
	}
	
	public void initializeDoctor(HttpSession session,Doctor doctor) {
		System.out.println("in initializeDoctor");
		session.setAttribute("doctor", doctor);
		/*Doctor Duty*/
	}
	
	
	/***********************Doctor Validation****************************************************************************************************/
	public String checkIfLaboratory(HttpServletRequest request) {
		try {
			System.out.println("checkIfLaboratory");
			Connection con = getConnection();
			String email = request.getParameter("emailLogin");
			String query = "select password from "+AppConstants.LABORATORY_TABLE+" where email=?";
			System.out.println("after fetching Laboratory login details");
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, email);
			ResultSet rs = ps.executeQuery();
			String password = "";
			if(rs.next()) {
				System.out.println("in checkIfLaboratory if statement");
				password = rs.getString(1);
				if(password.equals(request.getParameter("passwordLogin")))
					return "Laboratory";
				else
					return "Incorrect username/password";
			}
			else {
				System.out.println("checkIfLaboratory else");
			}
		} catch (SQLException e) {
			System.out.println(e);
		}	
		return "Incorrect username/password";
	}
	
	public Laboratory getLaboratory(String email) {
		System.out.println("getLaboratory");
		try {
			Connection con = getConnection();
			String query = "select * from "+AppConstants.LABORATORY_TABLE+" where email=?";
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, email);
			ResultSet rs = ps.executeQuery();
			Laboratory laboratory = null;
			System.out.println("back to getLaboratory");
			if(rs.next()) {
				laboratory = new Laboratory();
			    
				laboratory.setEmail(rs.getString("email"));
				laboratory.setLid(rs.getString("lid"));
				laboratory.setSpecialty(rs.getString("specialty"));
				laboratory.setActiveHours(rs.getString("activeHours"));
				laboratory.setLaboratoryName(rs.getString("laboratoryName"));
				laboratory.setPassword(rs.getString("password"));
				laboratory.setAddress(rs.getString("address"));
				laboratory.setPhoneNum(rs.getString("phoneNum"));
				System.out.println("in end of getLaboratory");
			}
			return laboratory;
		}
		catch(Exception e){
			System.out.println(e);
		}
		return null;
	}
	
	public void initializeLaboratory(HttpSession session,Laboratory laboratory) {
		System.out.println("in initializeLaboratory");
		session.setAttribute("laboratory", laboratory);
		/*Laboratory Duty*/
	}
	
	
	
	/***********************Patient Validation****************************************************************************************************/
	public String checkIfPatient(HttpServletRequest request) {
		try {
			System.out.println("in checkIfPatient");
			Connection con = getConnection();
			String email = request.getParameter("emailLogin");
			String query = "select password from "+AppConstants.PATIENT_TABLE+" where email=?";
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, email);
			ResultSet rs = ps.executeQuery();
			String password = "";
			if(rs.next()) {
				password = rs.getString(1);
				if(password.equals(request.getParameter("passwordLogin")))
					return "Patient";
				else
					return "Incorrect username/password";
			}			
		} catch (SQLException e) {
			System.out.println(e);
		}	
		return "Incorrect username/password";
	}
	
	public Patient getPatient(String email) {
		System.out.println("getAdmin");
		try {
			Connection con = getConnection();
			String query = "select * from "+AppConstants.PATIENT_TABLE+" where email=?";
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, email);
			ResultSet rs = ps.executeQuery();
			Patient patient = null;
			System.out.println("back to getAdmin");
			if(rs.next()) {
			    patient = new Patient();
			    
				patient.setEmail(rs.getString("email"));
				patient.setPid(rs.getString("pid"));
				patient.setWeight(rs.getString("weight"));
				patient.setAge(rs.getString("age"));
				patient.setDocID(rs.getString("docID"));
				patient.setFullName(rs.getString("fullName"));
				patient.setPassword(rs.getString("password"));
				patient.setGender(rs.getString("gender"));
				patient.setAddress(rs.getString("address"));
				patient.setHospitalID(rs.getString("hospitalID"));
				patient.setReportsID(rs.getString("reportsID"));
				patient.setPhoneNum(rs.getString("phoneNum"));
				System.out.println("in getPatient rs.next() method");
				

			}
			return patient;
		}
		catch(Exception e){
			System.out.println(e);
		}
		return null;
	}
	
	public void initializePatient(HttpSession session,Patient patient) {
		System.out.println("in initializePatient");
		session.setAttribute("patient", patient);
		/*Patient Duty*/
	}
	
}
