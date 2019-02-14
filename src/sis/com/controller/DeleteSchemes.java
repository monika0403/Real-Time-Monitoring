package sis.com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sis.com.dao.AdminAddScheme;
import sis.com.daoFactory.DaoFactory;

/**
 * Servlet implementation class DeleteSchemes
 */
public class DeleteSchemes extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String idStr = request.getParameter("scheme_id");;
		int id = Integer.parseInt(idStr );
		boolean check = false;
		
		AdminAddScheme adminAddScheme = DaoFactory.getAdminAddScheme();
		check = adminAddScheme.delete(id);
		
		if(check){
			System.out.println("Deleted");
			RequestDispatcher rd = request.getRequestDispatcher("schemes_deleted.jsp");
			rd.forward(request,response);
		}else{
			System.out.println("Error");
			RequestDispatcher rd = request.getRequestDispatcher("schemes_deleted_error.jsp");
			rd.forward(request,response);
		}
		
	}

	

}
