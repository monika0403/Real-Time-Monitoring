package sis.com.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import sis.com.bo.Form;
import sis.com.dao.FormDao;
import sis.com.util.SisDbUtil;

public class FormImpl implements FormDao{
	Connection con=null;
	PreparedStatement pstmt=null;
	int rs=0;
	
	public boolean addForm(Form form){
		 try {
			  
				con  = SisDbUtil.getConnection();
				String sql ="insert into attribute(scheme_code,name,age,gender,email,contact,"
						+ "hostel,school,hospital,village,aadhar"
						+ ")values(?,?,?,?,?,?,?,?,?,?,?)";
				pstmt  = con.prepareStatement(sql);
				pstmt.setInt(1, form.getI_d());
				pstmt.setString(2, form.getName());
				pstmt.setString(3, form.getAge());
				pstmt.setString(4, form.getGender());
				pstmt.setString(5, form.getEmail());
				pstmt.setString(6, form.getContact());
				pstmt.setString(7,form.getHostel());
				pstmt.setString(8,form.getSchool());
				pstmt.setString(9,form.getHospital());
				pstmt.setString(10,form.getVillage());
				pstmt.setString(11,form.getAadhar());
			
		    rs=	pstmt.executeUpdate();
		    	
			if(rs>0){
				return true;
			}	else{
				return false;
			}
			
			}
			  catch (SQLException e) {
				e.printStackTrace();
				}catch (Exception e2) {
					e2.printStackTrace();
				}finally{
					if(con!=null){
						try {
							con.close();
						} catch (Exception e3) {
							e3.printStackTrace();
						}//catch
					}//if
				}//finally
				
			
return false;		 
	 }
}
