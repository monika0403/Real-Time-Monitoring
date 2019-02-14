package sis.com.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.sql.Statement;
import java.util.ArrayList;

import sis.com.dao.AdminAddScheme;
import sis.com.daoFactory.DaoFactory;
import sis.com.util.EmailSender;
import sis.com.util.SisDbUtil;

/**
 * Servlet implementation class AddScheme
 */

public class AddSchemes extends HttpServlet {
	private static final long serialVersionUID = 1L;
       	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
   		
       		System.out.println("In add page.");
       	boolean check;	
       	
       	String schemeName = request.getParameter("scheme_name");
       	String idStr = request.getParameter("scheme_id");
       	int id = Integer.parseInt(idStr);
       	String domain = request.getParameter("domain");
       	
    	ArrayList<String> list= new ArrayList<String>();
       	
       	AdminAddScheme adminAddScheme = DaoFactory.getAdminAddScheme();
//       	System.out.println(adminAddScheme);
       	 check = adminAddScheme.add(schemeName,id,domain);
       	if(check==true){
        	System.out.println("check true");
        		try{
        			Connection con = SisDbUtil.getConnection();
        			System.out.println("connection created");
        			String sql = "select *from subscribe";
        			Statement stmt = con.createStatement();
        			ResultSet rs = stmt.executeQuery(sql);
        			int id1=0;
        			String email=null;
        			String location=null;
        			while(rs.next()){
        				//schemes.add(rs.getString(2));
        				id1=rs.getInt(1);
        				email=rs.getString(2);
        				location=rs.getString(3);
        	       	 boolean isMail=EmailSender.sendEmail(email,"visit this website: http://www.arunachalpradesh.gov.in/cm-flagship/ ", "New Scheme");
    if(isMail==true){
    	System.out.println("successfull");
    }
        			list.add(email);
        			}
        			}catch(SQLException e){
        				e.printStackTrace();
        			}
           	 }
       	if(check){
       		System.out.println("Scheme added!");
       		RequestDispatcher rd = request.getRequestDispatcher("schemes_added.jsp");
       		rd.forward(request, response);
       	}else{
       		System.out.println("Error");
       		RequestDispatcher rd1 = request.getRequestDispatcher("schemes_error.jsp");
			rd1.forward(request, response);

       	}
       	
       	
       	
       	}//doget

}//class
