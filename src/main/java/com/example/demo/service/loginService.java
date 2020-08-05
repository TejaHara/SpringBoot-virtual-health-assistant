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

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.Models.Admin;
import com.example.demo.Models.Patient;
import com.example.demo.Repository.AppConstants;
import com.example.demo.Repository.PatientRepository;


@Service
public class loginService {

	/**/@Autowired
	private static PatientRepository patientRepository;

	
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
	/**************************************************************************************************************/
	
	static {
		try {
			Class.forName(AppConstants.DB_DRIVER);
		} catch (ClassNotFoundException e) {
			System.out.println(e);
		}
	}
	
	/**********************************************************************************************************************************/
	public  String login(HttpServletRequest request) {
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
	
	
	
	/**********************************************************************************************************************************/

	
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
	
}
