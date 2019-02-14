package sis.com.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;
import java.util.Properties;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import javax.servlet.annotation.WebServlet;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import sis.com.util.SisDbUtil;
/**
 * Servlet implementation class UploadController
 */
@WebServlet("/uploadServlet")
@MultipartConfig(maxFileSize = 16177215)	
public class UploadController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String location = null;
		java.sql.Date date=new java.sql.Date(System.currentTimeMillis());
		InputStream inputStream = null;	// input stream of the upload file
		String fileName=null;
		long length = 0;
		InputStream docInputStream = null;
		String desc =null;
		
		// obtains the upload file part in this multipart request
		
		
		boolean isMultipart = ServletFileUpload.isMultipartContent(request);
System.out.println("mutipart "+isMultipart);
		  if(isMultipart){
			  ServletFileUpload upload = new ServletFileUpload(new DiskFileItemFactory());
			  try{
					List<FileItem> allMultipartsData = upload.parseRequest(request);
					//List<FileItem> allNonFileData = new ArrayList<FileItem>();
					//List<FileItem> allFileItemsList = new ArrayList<FileItem>();
		   for(FileItem item : allMultipartsData) {
			   if(item.isFormField()){
				   if("address".equalsIgnoreCase(item.getFieldName())){
					  location = item.getString();
					 System.out.println(location);
				   }
			   }
			   else{
				 if("photo".equalsIgnoreCase(item.getFieldName())){
						  fileName  = item.getName();
							 System.out.println(fileName);

						  length = item.getSize();
						  docInputStream  = item.getInputStream();
						//get done
				  }
			  }
		   }
		  }catch(Exception e){
			  e.printStackTrace();
			  }
		  }

		Connection conn = null;	// connection to the database
		String message = null;	// message will be sent back to client
		
		try {
			// connects to the database
			conn=SisDbUtil.getConnection();
			// constructs SQL statement
			String sql = "INSERT INTO upload(file_name,location,date1)values (?, ?, ?)";
			PreparedStatement statement = conn.prepareStatement(sql);
			statement.setString(2, location);
			statement.setString(1,fileName);
			statement.setDate(3,date);
			
			// sends the statement to the database server
			int row = statement.executeUpdate();
			if (row > 0) {
				message = "File uploaded and saved into database";
			}
		} catch (SQLException ex) {
			message = "ERROR: " + ex.getMessage();
			ex.printStackTrace();
		} finally {
			if (conn != null) {
				// closes the database connection
				try {
					conn.close();
				} catch (SQLException ex) {
					ex.printStackTrace();
				}
			}
			// sets the message in request scope
		}
		String relpath="upload1234";
		// final String UPLOAD_FOLDER = getServletContext().getRealPath(relpath);
		final String UPLOAD_FOLDER ="D:\\myprojects\\workspace2\\SmartIndiaHackathon\\WebContent\\upload1234";
		  File file = new File(UPLOAD_FOLDER);
		  if(!file.exists()){
			  file.mkdir();
			 }
		  System.out.println(UPLOAD_FOLDER);
		  //sis.txt    sis_123434354.txt
		  		
		  if(fileName.contains(" ")){
			  fileName.replace(" ", "_");
		  }//if
		  //String extension = fileName.substring(fileName.indexOf('.'), fileName.length());
		 //String newFile = fileName.substring(0,fileName.indexOf('.'))+"_"+System.currentTimeMillis()+extension;
        String savePath_file  = UPLOAD_FOLDER+"\\"+fileName;
		  FileOutputStream fos =null;
		  //read and write
		  try{
				fos  = new FileOutputStream(savePath_file);
			  byte[] data = new byte[1024];
			  while( docInputStream.read(data)!=-1){
				  fos.write(data);
			  }
			  
			 }catch(Exception e){
			  
		  }finally{
		    try{
			 docInputStream.close();
		     fos.close();
		    // ("file saved");
		    }catch(Exception e){
		    	e.printStackTrace();
		 //    out.print("file saved problem  "+ e.getMessage());
		    }
			  
		  }
		

	}

}
