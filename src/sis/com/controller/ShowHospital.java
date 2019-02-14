package sis.com.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import sis.com.bo.hospital;
import sis.com.dao.hospitalDao;
import sis.com.daoFactory.DaoFactory;

/**
 * Servlet implementation class ShowHospital
 */
public class ShowHospital extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShowHospital() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String dist=request.getParameter("hospital");
		System.out.println(dist);
		hospitalDao dao = DaoFactory.getHospitalDao();
	    List <hospital> h = new ArrayList<hospital>();
		h=dao.show(dist);
		System.out.println(h);
		HttpSession session = request.getSession();
		//session.setAttribute("hospital2",h);	
		session.setAttribute("hospital1",h);		

			response.sendRedirect("Admin_show_hospital.jsp");
			
	}

}
