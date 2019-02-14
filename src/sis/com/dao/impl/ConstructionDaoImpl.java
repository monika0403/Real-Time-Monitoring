package sis.com.dao.impl;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import sis.com.bo.hospital;
import sis.com.dao.ConstructionDao;
import sis.com.util.SisDbUtil;

public class ConstructionDaoImpl implements ConstructionDao {

	public ArrayList<String> SeeDateList() {

		ArrayList<String> dateList= new ArrayList<String>();
		PreparedStatement pstmt=null;
		Connection con=null;
		ResultSet rs=null;
		try {
			con=SisDbUtil.getConnection();
			String sql="select date1 from upload";

			pstmt =con.prepareStatement(sql);
			rs=pstmt.executeQuery();
		while(rs.next()){
		Date date=rs.getDate("date1");
		DateFormat df= new SimpleDateFormat();
		String numberdate=df.format(date);
		String dateday=numberdate.substring(8,10); 
		System.out.println(dateday);
			dateList.add(dateday);
					}
					
						
		}catch(SQLException e) {
						e.printStackTrace();
					}finally {
						try {
							SisDbUtil.closeConnection(con);
						} catch (SQLException e) {
							e.printStackTrace();
						}
					}//finally
					return dateList;
	}   //method

}   //classs
