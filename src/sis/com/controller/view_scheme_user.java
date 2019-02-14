package sis.com.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sis.com.bo.SchemesBo;
import sis.com.dao.AdminAddScheme;
import sis.com.daoFactory.DaoFactory;

/**
 * Servlet implementation class view_scheme_user
 */
@WebServlet("/view_scheme_user")
public class view_scheme_user extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<SchemesBo> schemesDb = null;
       	AdminAddScheme adminAddScheme = DaoFactory.getAdminAddScheme();
       	System.out.println(adminAddScheme);	
       	
       	schemesDb = adminAddScheme.check();
       	
       	request.setAttribute("schemesDb", schemesDb);
       	RequestDispatcher rd = request.getRequestDispatcher("view_schemes_user.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
