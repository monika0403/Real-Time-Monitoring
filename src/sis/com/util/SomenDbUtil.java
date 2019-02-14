package sis.com.util;

import java.sql.SQLException;
import java.sql.Connection;
import java.sql.DriverManager;


public class SomenDbUtil{
	
	//static String url = "jdbc:oracle:thin:@localhost:1521:XE";
	static String url = "jdbc:mysql://localhost:3306/smartDb";
	static String user = "system";	
	static String password = "root";
	
	static{
		try{
			//Class.forName("oracle.jdbc.driver.OracleDriver");
			Class.forName("com.mysql.jdbc.Driver");
			System.out.println("Driver loaded");
		}catch(Exception e){
			System.out.println("Class not found!");
			e.printStackTrace();

		}
	}//static
	
	public static Connection getConnection() throws SQLException{
		return DriverManager.getConnection(url,user,password);
	}//getConnection
	
	public static void closeConnection(Connection con) throws SQLException {
	  if(con!=null){
	  con.close();
	  }
	}
	
	
	
}//class