package sis.com.controller;

import java.io.IOException;
import java.sql.Date;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import sis.com.bo.beneficiaryMonth;
import sis.com.dao.BenificaryDao;
import sis.com.dao.beneficiaryMonthDao;
import sis.com.daoFactory.DaoFactory;


/**
 * Servlet implementation class monthlyCheckController
 */
public class monthlyCheckController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
        beneficiaryMonth month  =new beneficiaryMonth();
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
						if("mid".equalsIgnoreCase(paramItem.getFieldName())){
							month.setId(Integer.parseInt(paramItem.getString()));						
						} else if("month".equalsIgnoreCase(paramItem.getFieldName())){
							month.setMonth(Integer.parseInt(paramItem.getString()));
						
			           }else if("complete".equalsIgnoreCase(paramItem.getFieldName())){
							month.setCHECKUP(paramItem.getString());					        
						}else if("comment".equalsIgnoreCase(paramItem.getFieldName())){
							month.setDescription(paramItem.getString());
						}
						
						
					
					  }//data extraction end
				//file data process
	//========================================================
			     
		for (FileItem fileItem : allFileItemsList) {
		System.out.println("inside file processing*****************************");
			if("monthDoc".equalsIgnoreCase(fileItem.getFieldName())){
				System.out.println("file found student image processing+++++++*******");
				month.setFileUploads1(fileItem.getInputStream());
				month.setFile1Size((int)fileItem.getSize());
				
				}//if
			if("monthDoc1".equalsIgnoreCase(fileItem.getFieldName())){
				System.out.println("file found file processing+++++++*******");
				month.setFileUploads2(fileItem.getInputStream());
				month.setFile2Size((int)fileItem.getSize());
				} 

		
		}
		}catch(Exception e){
			e.printStackTrace();
			 System.out.println("File upload failed"+e.getMessage());
			 
		} 
			
			
  }   //end of if
	
	 beneficiaryMonthDao dao = DaoFactory.getbeneficiaryMonthDao();
 boolean result = dao.addMonthDetails(month);
   if (result==true){
    	System.out.println("record added to db"); 	
    	
    	Random rand = new Random();
    	int otp = rand.nextInt(1000000)+1 ;
    	System.out.println(otp);
    	BenificaryDao dao1=DaoFactory.getBenificaryDao();
    	String mobileno = dao1.getMobileNo(""+month.getId());
    	boolean sms=false;
    	try{
    	//sms = smsUtil.sendOtp(mobileno,otp);
    	}catch(Exception e){
    		e.getMessage();
    	}
    	if(sms==true){
    	HttpSession session = request.getSession();
    	session.setAttribute("otp", "enter otp");
    	session.setAttribute("mid", month.getId());
    	session.setAttribute("otpno", otp);
    	//session.setAttribute("Wid", month.getId());
    	response.sendRedirect("monthlyCheckup.jsp");
    	}
    }
		
	}

 
}
