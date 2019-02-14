package sis.com.controller;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;








import javax.servlet.http.HttpSession;

import sis.com.bo.Photo;
import sis.com.util.SisDbUtil;

/**
 * Servlet implementation class ShowPhoto
 */
public class ShowPhoto extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShowPhoto() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Connection con=null;
        ResultSet rs=null;
        PreparedStatement pstmt=null;
        response.reset();
		response.setContentType("image/jpeg");

        ArrayList<Photo> list=new ArrayList<Photo>();
		try{        
		con=SisDbUtil.getConnection();
		String sql = "select *from upload";
		pstmt=con.prepareStatement(sql);
		rs=pstmt.executeQuery();
		while(rs.next()){
			 Photo photo=new Photo();
		 photo.setId(rs.getInt(1));
		 photo.setFile_name(rs.getString(2));
		 photo.setLocation(rs.getString(3));
		 photo.setDate(rs.getDate(4));

		 String fileName=null;
		  	String relativePath="\\upload1234";
		  //	String absolutePath=getServletContext().getRealPath(relativePath);
			 	String absolutePath="D:\\myprojects\\workspace2\\SmartIndiaHackathon\\WebContent\\upload1234";
  	
		 	InputStream input = null;
		 	input = new FileInputStream(absolutePath+"\\"+rs.getString(2));
		 	photo.setPhoto(input);
		 	 if(input!=null){
				 System.out.println("....................");
/*					byte[] byteArrayData = new byte[1024];
					int size=0;
					while((size=input.read(byteArrayData))!= -1 ){
						
						response.getOutputStream().write(byteArrayData,0,size);
					}
*/		 	 }
					
		 	photo.setPhoto(input);
			 list.add(photo);
		}
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
		HttpSession session=request.getSession();
		session.setAttribute("list", list); 
		response.sendRedirect("Show_updates.jsp");
        }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
