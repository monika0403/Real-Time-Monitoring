package sis.com.dao.impl;





import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import sis.com.bo.Appeal;
import sis.com.dao.appealDao;
import sis.com.util.SisDbUtil;

public class appealDaoImpl implements appealDao {

	public boolean add(Appeal appeal){
		
		boolean result1= false;
		
		PreparedStatement pstmt=null;
		Connection con =null;
		try {
			con=SisDbUtil.getConnection();
			String sql="insert into appeal( ID,accNo,dateCheckup,birthCerti)values(?,?,?,?)";
			pstmt=con.prepareStatement(sql);
			pstmt.setInt(1,appeal.getId());
		//	System.out.println(beneficiary.getId());
			pstmt.setString(2,appeal.getAccno());
			pstmt.setDate(3, appeal.getBirth());
			pstmt.setBinaryStream(4,appeal.getBirthCerti(),appeal.getSize());
								
			int result =pstmt.executeUpdate();			
			if(result==1) {
				System.out.println("appeal to database");
				result1=true;
			}
			else {
				System.out.println("appeal not added to database");
				result1=false;	
				}//else
			
		}catch(SQLException e) {
			System.out.println("error in SQLException inside add()");
			e.printStackTrace();
			return false;
		}finally {
			try {
				SisDbUtil.closeConnection(con);
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}//finally
	
		return result1;
	}
}
