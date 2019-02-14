package sis.com.controller;

import java.io.IOException;
import java.util.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import sis.com.bo.Benificary;
import sis.com.dao.BenificaryDao;
import sis.com.daoFactory.DaoFactory;

/**
 * Servlet implementation class acceptSchemeRequestController
 */
public class acceptSchemeRequestController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public acceptSchemeRequestController() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	             
			String id = request.getParameter("id");
			String respons =  request.getParameter("name");
			BenificaryDao dao = DaoFactory.getBenificaryDao();
			boolean result = dao.updateSelected(respons,id);
		   
			if(result==true){
				request.setAttribute("updateMSG", "the petient is accepted");
				response.sendRedirect("view_women_list_doctor.jsp");
			}else{
				request.setAttribute("updateMSG", "the petient is decline");
				response.sendRedirect("view_women_list_doctor.jsp");
			}
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		BenificaryDao dao = DaoFactory.getBenificaryDao();
		String hosp = request.getParameter("hosp");
		List<Benificary> ben = dao.ShowAllBenificiaryByHosp(hosp);
		System.out.println("list in controller"+ben);
		for(Benificary b:ben){
			System.out.println("get name "+b.getSelected());
		}
		HttpSession session = request.getSession();
		session.setAttribute("beneficiary", ben);
		response.sendRedirect("view_women_list_doctor.jsp");
	}

}
