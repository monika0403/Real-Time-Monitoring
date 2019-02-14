package sis.com.controller;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sis.com.bo.Photo;
import sis.com.util.SisDbUtil;

/**
 * Servlet implementation class ViewImageController
 */
public class ViewImageController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int  id= Integer.parseInt(request.getParameter("id"));
		String name= request.getParameter("name");
		 Connection con=null;
	        ResultSet rs=null;
	        PreparedStatement pstmt=null;
	        response.reset();
			response.setContentType("image/jpeg");
			
			if(name.equalsIgnoreCase("image1")){
					 
					 
			try{        
			con=SisDbUtil.getConnection();
			String sql = "select *from upload where id=?";
			pstmt=con.prepareStatement(sql);
			pstmt.setInt(1, id);
			rs=pstmt.executeQuery();
			while(rs.next()){
				 Photo photo=new Photo();
			 photo.setId(rs.getInt(1));
			 photo.setFile_name(rs.getString(2));
			 photo.setLocation(rs.getString(3));
			 photo.setDate(rs.getDate(4));

			 String fileName=null;
			  	String relativePath="\\upload1234";
			  //	String absolutePath=getServletContext().getRealPath(relativePath);
				 	String absolutePath="D:\\myprojects\\workspace2\\SmartIndiaHackathon\\WebContent\\upload1234";
	  	
			 	InputStream input = null;
			 	input = new FileInputStream(absolutePath+"\\"+rs.getString(2));
			 	photo.setPhoto(input);
			 	
			 	 if(input!=null){
					 System.out.println("....................");
				byte[] byteArrayData = new byte[1024];
						int size=0;
						while((size=input.read(byteArrayData))!= -1 ){
							
							response.getOutputStream().write(byteArrayData,0,size);
						}
			 	 }
						
			}
	        }catch(SQLException e){
	        e.printStackTrace();
	        }catch (Exception e) {
				e.printStackTrace();
			}finally{
				if (con != null) {
					// closes the database connection
					try {
						con.close();
					} catch (SQLException ex) {
						ex.printStackTrace();
					}
				}
				}//finally
			}
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
