package com.example.demo.Repository;

public class AppConstants {

	public static String DB_DRIVER = "com.mysql.cj.jdbc.Driver";
	public static String DB_SCHEMA = "userdb";
	public static String DB_USER = "root";
	public static String DB_PASSWORD = "qwerty";
	public static String DB_HOST = "localhost";
	public static String DB_PORT = "3306";
	public static String DB_URL = "jdbc:mysql://" + DB_HOST + ":" + DB_PORT + "/" + DB_SCHEMA + "?useSSL=false";
	public static String NO_DATA_FOUND_MESG = "Sorry, there is no data available";
	public static String TABLE_NAME = "admin_info";
}
