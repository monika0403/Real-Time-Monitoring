package sis.com.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import sis.com.bo.SchemesBo;
import sis.com.controller.*;
import sis.com.dao.*;
import sis.com.daoFactory.DaoFactory;

/**
 * Servlet implementation class NewSchemes
 */

public class NewSchemes extends HttpServlet {
	private static final long serialVersionUID = 1L;
       	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       		
       		List<String> schemesByWebTest = new ArrayList<String>();
       		List<String> schemesByWeb = new ArrayList<String>();
       		boolean skip = false; // remove first 
       		ArrayList<SchemesBo> schemesByDb = null;
       		
       		System.out.println("Started");
       		String url1 = "http://www.arunachalpradesh.gov.in/cm-flagship/";
       	try{
       		final Document document = Jsoup.connect(url1).get();
       		Elements tableId = document.select("#tablepress-61");
       		Elements td = tableId.select(".column-3");
       		

       		AdminAddScheme adminAddScheme = DaoFactory.getAdminAddScheme();
			schemesByDb = adminAddScheme.check();

       		System.out.println("Schemes by db : " + schemesByDb);
       		//without validation
       		for(Element e : td) {
       				System.out.println(e.text());
       				System.out.println();
       				if(!skip){
       					skip = true;
       					continue;
       				}
				
       					schemesByWebTest.add(e.text());
       				
       		}//for element
       		
       		       		
       		
       	}catch(IOException e) {
       		System.out.println("IO exception");
       		}//catch
       	
       	for(String scWeb : schemesByWebTest){
       		schemesByWeb.add(scWeb);
       	}
       	
       	boolean checkEntry = false;
       	for(String scWeb : schemesByWebTest){
       		for(SchemesBo scDb : schemesByDb){
       			System.out.println();
       			System.out.println();
       			System.out.println("scWeb : "+scWeb);
       			System.out.println("scDb : "+scDb.getName());
       			
       			if(scWeb.equals(scDb.getName())){
       				schemesByWeb.remove(scWeb);
       				
       			}
       		}//forIn
       		
       	}//forOut
       	
       	request.setAttribute("schemes",schemesByWeb);
       	
       	RequestDispatcher rd = request.getRequestDispatcher("show_schemes.jsp");
       	rd.forward(request, response);
       	
       	}//doGet

       	
       	
}//class
       	