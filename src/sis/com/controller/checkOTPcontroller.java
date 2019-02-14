package sis.com.controller;

import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import sis.com.util.*;


/**
 * Servlet implementation class checkOTPcontroller
 */
public class checkOTPcontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		HttpSession session = request.getSession(false);
		String getOTP = ""+session.getAttribute("otpno");
		System.out.println(getOTP);
		 String otp = request.getParameter("OTP");
		System.out.println(otp);
		int id = Integer.parseInt(""+session.getAttribute("mid"));
		 if(getOTP.equals(otp)){
			  Connection con =null;
			  int result=0;
			  PreparedStatement pstmt= null;
					try {
						con= SisDbUtil.getConnection();
						String sql="update monthlyDetail set  confirmation=? where id=?";
						pstmt = con.prepareStatement(sql);
						pstmt.setString(1, "YES");
						pstmt.setInt(2,id);
						result= pstmt.executeUpdate();
							
					  } catch (Exception e) {
						e.printStackTrace();
						
					 }finally {
						try {
							SisDbUtil.closeConnection(con);
						} catch (SQLException e) {
							e.printStackTrace();
						}
					}//finally
					if(result>0){
						System.out.print("checkup is confirmed ");
						session.setAttribute("confirm", "checkup is confirmed");
					}
		   }   
	}

}
