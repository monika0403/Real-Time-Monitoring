package sis.com.controller;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sis.com.util.SisDbUtil;

/**
 * Servlet implementation class Subscribe
 */
public class Subscribe extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Subscribe() {
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
		String email=request.getParameter("email");
		String dist=request.getParameter("location");
		Connection con=null;
       int rs=0;
        PreparedStatement pstmt=null;
      

		try{        
		con=SisDbUtil.getConnection();
		String sql = "insert into subscribe(email,location)values(?,?)";
		pstmt=con.prepareStatement(sql);
		pstmt.setString(1,email);
		pstmt.setString(2, "hello" );
		
		rs=pstmt.executeUpdate();
        }catch(SQLException e){
        e.printStackTrace();
        }catch (Exception e) {
			e.printStackTrace();
		}finally{
			if (con != null) {
				// closes the database connection
				try {
					con.close();
				} catch (SQLException ex) {
					ex.printStackTrace();
				}
			}
			}//finally
	}

}
