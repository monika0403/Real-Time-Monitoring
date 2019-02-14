package sis.com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sis.com.bo.Form;
import sis.com.dao.FormDao;
import sis.com.daoFactory.DaoFactory;

/**
 * Servlet implementation class insert
 */
public class insert extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
   
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name;
		String age;
		if(request.getParameter("name")!=null){
			
		 name="yes";
		}
		else{
			 name="no";
		}
		if(request.getParameter("age")!=null){
			 age="yes";
			}
			else{
				age="no";
			}
		if(request.getParameter("age")!=null){
			age="yes";
			}
			else{
			 age="no";
			}
		String gender=request.getParameter("gender");
		if(request.getParameter("gender")!=null){
			gender="yes";
			}
			else{
			 gender="no";
			}
		String contact=request.getParameter("contact");
		if(request.getParameter("contact")!=null){
			contact="yes";
			}
			else{
			 contact="no";
			}
		String email=request.getParameter("email");
		if(request.getParameter("email")!=null){
			email="yes";
			}
			else{
			 email="no";
			}
		String aadhar=request.getParameter("aadhar");
		if(request.getParameter("aadhar")!=null){
			aadhar="yes";
			}
			else{
				aadhar="no";
			}
		String address=request.getParameter("address");
		if(request.getParameter("address")!=null){
			address="yes";
			}
			else{
			 address="no";
			}
		String  father =request.getParameter("father");
		if(request.getParameter("father")!=null){
			father="yes";
			}
			else{
			 father="no";
			}
		String husband=request.getParameter("husband");
		if(request.getParameter("husband")!=null){
			husband="yes";
			}
			else{
			 husband="no";
			}
		String dob=request.getParameter("dob");
		if(request.getParameter("dob")!=null){
			dob="yes";
			}
			else{
			 dob="no";
			}
		String hostel=request.getParameter("hostel");
		if(request.getParameter("hostel")!=null){
			hostel="yes";
			}
			else{
			 hostel="no";
			}
		String school=request.getParameter("school");
		if(request.getParameter("school")!=null){
			school="yes";
			}
			else{
			 school="no";
			}
		String hospital=request.getParameter("hospital");
		if(request.getParameter("hospital")!=null){
			 hospital="yes";
			}
			else{
				 hospital="no";
			}
		String village=request.getParameter("village");
		if(request.getParameter("village")!=null){
			village="yes";
			}
			else{
				village="no";
			}
		String file_aadhar=request.getParameter("file_aadhar");
		if(request.getParameter("file_aadhar")!=null){
			file_aadhar="yes";
			}
			else{
				file_aadhar="no";
			}
		String file_cast=request.getParameter("file_cast");
		if(request.getParameter("file_cast")!=null){
			file_cast="yes";
			}
			else{
			 file_cast="no";
			}
		String file_passbook=request.getParameter("file_passbook");
		if(request.getParameter("file_passbook")!=null){
			file_passbook="yes";
			}
			else{
				file_passbook="no";
			}
		String d_l=request.getParameter("d_l");
		if(request.getParameter("d_l")!=null){
			d_l="yes";
			}
			else{
				d_l="no";
			}
		String file_other=request.getParameter("file_other");
		if(request.getParameter("file_other")!=null){
			file_other="yes";
			}
			else{
				file_other="no";
			}
		String file_bpl=request.getParameter("file_bpl");
		if(request.getParameter("file_bpl")!=null){
			file_bpl="yes";
			}
			else{
				file_bpl="no";
			}
		String file_residance=request.getParameter(" file_residance");
		if(request.getParameter("file_residance")!=null){
			file_residance="yes";
			}
			else{
				file_residance="no";
			}
		String file_10th=request.getParameter("file_10th");
		if(request.getParameter("file_10th")!=null){
			file_10th="yes";
			}
			else{
				file_10th="no";
			}
		String file_12th=request.getParameter("file_12th");
		if(request.getParameter("age")!=null){
			file_12th="yes";
			}
			else{
				file_12th="no";
			}
		String i_d=request.getParameter("i_d");
		
		
		FormDao dao=DaoFactory.getFormDao();
		Form f=new Form();
		f.setName(name);
		f.setAge(age);
		f.setGender(gender);
		f.setContact(contact);
		f.setEmail(email);
		f.setAadhar(aadhar);
		f.setAddress(address);
		f.setFather(father);
		f.setHusband(husband);
		f.setDob(dob);
		f.setHostel(hostel);
		f.setSchool(school);
		f.setHospital(hospital);
		f.setVillage(village);
		f.setFile_aadhar(file_aadhar);
		f.setFile_cast(file_cast);
		f.setFile_passbook(file_passbook);
		f.setD_l(d_l);
		f.setFile_other(file_other);
		f.setFile_bpl(file_bpl);
		f.setFile_residance(file_residance);
		f.setFile_10th(file_10th);
		f.setFile_12th(file_12th);
		f.setI_d(Integer.parseInt(i_d));
		boolean f1=dao.addForm(f);
	}

}
