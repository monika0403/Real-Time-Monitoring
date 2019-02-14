package sis.com.controller;

import java.io.IOException;
import java.sql.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import sis.com.bo.*;
import sis.com.dao.*;
import sis.com.daoFactory.DaoFactory;
import sis.com.dao.appealDao;

/**
 * Servlet implementation class appealController
 */
public class appealController extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	 HttpSession session = request.getSession(false);
	//int apid = Integer.parseInt((String)session.getAttribute("apId"));
	   //  String accno = request.getParameter("acc_no");
	   //  String  = request.getParameter("date");
	    
	     Appeal a  =new Appeal();
			boolean isMultipart = ServletFileUpload.isMultipartContent(request);
			
			if(isMultipart){
				
				// Create a factory for disk-based file items
				FileItemFactory factory = new DiskFileItemFactory();

				// Create a new file upload handler
				ServletFileUpload upload = new ServletFileUpload(factory);
				
				
				try {
					// Parse the request
					List<FileItem> allMultipartsData = upload.parseRequest(request);
						
					List<FileItem> allNonFileData = new ArrayList<FileItem>();
					List<FileItem> allFileItemsList = new ArrayList<FileItem>();
					
					for (FileItem item : allMultipartsData) {
						if (item.isFormField()) {
							allNonFileData.add(item);
						}else if (!item.isFormField()) {
							allFileItemsList.add(item);
						}
					}
				     for (FileItem paramItem : allNonFileData) {
							//extract data
							
								a.setId(Integer.parseInt((String)session.getAttribute("apId")));	
								
						  if("acc_no".equalsIgnoreCase(paramItem.getFieldName())){
								a.setAccno((paramItem.getString()));							
				           }else if("bdate".equalsIgnoreCase(paramItem.getFieldName())){
								String bdate=paramItem.getString();	
								DateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
								java.sql.Date today = (Date) sdf.parse(bdate);
								a.setBirth(today);
							}
							
							
						
						  }//data extraction end
					//file data process
		//========================================================
				     
			for (FileItem fileItem : allFileItemsList) {
			System.out.println("inside file processing*****************************");
				if("b_certi".equalsIgnoreCase(fileItem.getFieldName())){
					System.out.println("file found student image processing+++++++*******");
					a.setBirthCerti(fileItem.getInputStream());
					a.setSize((int)fileItem.getSize());
					
					}//if
						
			}
			}catch(Exception e){
				e.printStackTrace();
				 System.out.println("File upload failed"+e.getMessage());
				 
			} 
				
				
	  }   //end of if
		
		 appealDao dao = DaoFactory.getappealDao();
	      boolean result = dao.add(a);
	   if (result==true){
	    	System.out.println("record added to db"); 	
	}

	}
}