package sis.com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sis.com.bo.hospital;
import sis.com.dao.hospitalDao;
import sis.com.daoFactory.DaoFactory;

/**
 * Servlet implementation class hospitalRegController
 */
public class hospitalRegController extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		hospitalDao dao = DaoFactory.getHospitalDao();
		hospital h = new hospital();
		h.setHos_name(request.getParameter("hospital"));
		h.setStreet(request.getParameter("street"));
		h.setCity(request.getParameter("city"));
		h.setDistrict(request.getParameter("district"));
		h.setPostalNo(Long.parseLong(request.getParameter("postal")));
		h.setRecept_name(request.getParameter("recName"));
		h.setIncharge_name(request.getParameter("inchargeName"));
		h.setIncharge_mobile(Long.parseLong(request.getParameter("inchargeNo")));
		 h.setRecept_mobile(Long.parseLong(request.getParameter("recNo")));
		h.setDoc_name1(request.getParameter("name1"));
		 h.setDoc_mobile1(Long.parseLong(request.getParameter("mobile1")));
		 h.setDoc_name2(request.getParameter("name2"));
		h.setDoc_mobile2(Long.parseLong(request.getParameter("mobile2")));
		
		boolean result = dao.add(h);
		if(result==true){
			request.setAttribute("hospitalmsg","your hospital is registered in database");
			response.sendRedirect("hospital_register_form.jsp");
		}
	}

}
