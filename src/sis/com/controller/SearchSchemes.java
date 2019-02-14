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

public class SearchSchemes extends HttpServlet {
	private static final long serialVersionUID = 1L;
   	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

   		String domain = request.getParameter("domain");
   		
   		System.out.println("value of domain : " + domain);
   		
   		AdminAddScheme adminAddScheme = DaoFactory.getAdminAddScheme();
   		ArrayList<SchemesBo> schemes = adminAddScheme.search(domain);
   		
   		System.out.println("Schemes in service : " + schemes);
   		
   		request.setAttribute("schemesDb", schemes);
   		
   		RequestDispatcher rd = request.getRequestDispatcher("view_schemes_jsp.jsp");
   		rd.forward(request, response);
   		
   	}

}
