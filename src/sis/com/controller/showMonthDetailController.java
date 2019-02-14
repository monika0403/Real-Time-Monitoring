package sis.com.controller;
import java.util.*;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import sis.com.bo.beneficiaryMonth;
import sis.com.dao.beneficiaryMonthDao;
import sis.com.daoFactory.DaoFactory;

/**
 * Servlet implementation class showMonthDetailController
 */
public class showMonthDetailController extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// TODO Auto-generated method stub
		int id = Integer.parseInt(request.getParameter("id"));
		beneficiaryMonthDao dao = DaoFactory.getbeneficiaryMonthDao();
		
		List<beneficiaryMonth> blist = dao.showMonthlyDetails(id);
		System.out.println(blist);
		HttpSession session = request.getSession();
		session.setAttribute("blist", blist);
		response.sendRedirect("monthlyCheckup.jsp");
	}

}
