package sis.com.dao.impl;

import java.sql.Connection;
import java.util.*;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import sis.com.bo.hospital;
import sis.com.dao.hospitalDao;
import sis.com.util.SisDbUtil;

public class hospitalDaoImpl implements hospitalDao{

	Connection con=null;
	ResultSet rs=null;

	//@Override
	public boolean add(hospital hosp) {
		PreparedStatement pstmt=null;
		try {
			con=SisDbUtil.getConnection();
			String sql="insert into hospital( hos_name, street, city, district, "
					+ "postalNo, incharge_name, incharge_mobile, recept_name, recept_mobile, doc_name1,"
					+ " doc_mobile1, doc_name2, doc_mobile2)"
					+ "values(?,?,?,?, ?,?,?,?,?,?,?,?,?)";
			pstmt=con.prepareStatement(sql);
			//System.out.println("admin.getAdminId()"+admin.getAdminId());
			pstmt.setString(1,hosp.getHos_name());//this must be handle
			pstmt.setString(2, hosp.getStreet());
			pstmt.setString(3, hosp.getCity());
			pstmt.setString(4, hosp.getDistrict());
			pstmt.setLong(5,hosp.getPostalNo());
			pstmt.setString(6, hosp.getIncharge_name());
			pstmt.setLong(7,hosp.getIncharge_mobile());
			pstmt.setString(8, hosp.getRecept_name());
			pstmt.setLong(9, hosp.getRecept_mobile());
			pstmt.setString(10, hosp.getDoc_name1());
			pstmt.setLong(11, hosp.getDoc_mobile1());
			pstmt.setString(12, hosp.getDoc_name2());
			pstmt.setLong(13, hosp.getDoc_mobile2());			
					
			int result =	pstmt.executeUpdate();			
			if(result==1) {
				System.out.println("hospital added to database");
				return true;
			}
			else {
				System.out.println("hospital doesn't added to database");
				return false;
			}//else
			
		}catch(SQLException e) {
			System.out.println("error in hospitalDaoImpl SQLException inside add()");
			e.printStackTrace();
			return false;
		}finally {
			try {
				SisDbUtil.closeConnection(con);
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}//finally
	}//add

	public List<hospital> show(String dist){
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		List<hospital> list=new ArrayList<hospital>();
		try {
			con=SisDbUtil.getConnection();
			String sql="select *from hospital where district=?";

			pstmt =con.prepareStatement(sql);
			pstmt.setString(1, dist);
			rs=pstmt.executeQuery();
		while(rs.next()){
			hospital h=new hospital();
			h.setHospitalId(rs.getInt(1));
			h.setHos_name(rs.getString(2));
			System.out.println("Hospital name"+rs.getString(2));
			h.setStreet(rs.getString(3));
			h.setCity(rs.getString(4));
			h.setDistrict(rs.getString(5)); 
			h.setPostalNo(rs.getInt(6));
			h.setIncharge_name(rs.getString(7));
			h.setIncharge_mobile(rs.getInt(8));
			h.setRecept_name(rs.getString(9));
			h.setRecept_mobile(rs.getInt(10));
			h.setDoc_name1(rs.getString(11));
            h.setDoc_mobile1(rs.getInt(12));
            h.setDoc_name2(rs.getString(13));
            h.setDoc_mobile2(rs.getInt(14));
            System.out.println(rs.getInt(14));
            list.add(h);
		}
			
			//System.out.println(list);
			
			
		}catch(SQLException e) {
			System.out.println("error in hospitalDaoImpl SQLException inside show()");
			e.printStackTrace();
		}finally {
			try {
				SisDbUtil.closeConnection(con);
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}//finally
		return list;
	}

}
