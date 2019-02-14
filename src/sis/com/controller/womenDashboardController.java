package sis.com.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import sis.com.bo.Benificary;
import sis.com.bo.beneficiaryMonth;
import sis.com.dao.*;
import sis.com.daoFactory.DaoFactory;

/**
 * Servlet implementation class womenDashboardController
 */
public class womenDashboardController extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id= Integer.parseInt(request.getParameter("wid"));
		BenificaryDao dao = DaoFactory.getBenificaryDao();
		Benificary benificiary  = dao.ShowBenificiaryById(id);
		
		beneficiaryMonthDao dao1 = DaoFactory.getbeneficiaryMonthDao();
		List<beneficiaryMonth> b1 = dao1.showMonthlyDetails(id);
		
		HttpSession session = request.getSession(false);
		 session.setAttribute("beneficiary", benificiary);
		 session.setAttribute("monthData", b1);
		 response.sendRedirect("women_Dashboard.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
