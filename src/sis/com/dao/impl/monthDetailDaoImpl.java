package sis.com.dao.impl;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import sis.com.bo.beneficiaryMonth;
import sis.com.dao.beneficiaryMonthDao;
import sis.com.util.SisDbUtil;

public class monthDetailDaoImpl implements beneficiaryMonthDao{
	Connection con=null;
	ResultSet rs=null;
	
	public boolean addMonthDetails(beneficiaryMonth beneficiary){
			PreparedStatement pstmt=null;
			
			try {
				con=SisDbUtil.getConnection();
				String sql="insert into MonthlyDetail(id ,Month,dateCheckup,CHECKUP,Description,"
						+ "fileUploads1,fileUploads2) values(?,?,?,?,?,?,?)";
				pstmt=con.prepareStatement(sql);
				pstmt.setInt(1,beneficiary.getId());
				System.out.println(beneficiary.getId());
				pstmt.setInt(2,beneficiary.getMonth());
				 long time = System.currentTimeMillis();
				pstmt.setDate(3, new Date(time));
				pstmt.setString(4, beneficiary.getCHECKUP());
				pstmt.setString(5,beneficiary.getDescription());
				pstmt.setBinaryStream(6, beneficiary.getFileUploads1(),beneficiary.getFile1Size());
				pstmt.setBinaryStream(7,beneficiary.getFileUploads2(),beneficiary.getFile2Size());
										
				int result =	pstmt.executeUpdate();			
				if(result==1) {
					System.out.println("month details to database");
					return true;
				}
				else {
					System.out.println(" month details not added to database");
					return false;
				}//else
				
			}catch(SQLException e) {
				System.out.println("error in month details SQLException inside add()");
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

	
	public List<beneficiaryMonth> showMonthlyDetails(int id){
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		List<beneficiaryMonth> list= new ArrayList<beneficiaryMonth>();
		try {
			con=SisDbUtil.getConnection();
			String sql="select id ,Month,dateCheckup,CHECKUP,Description, confirmation from MonthlyDetail where id=?";
			pstmt=con.prepareStatement(sql);
			pstmt.setInt(1,id);
			rs = pstmt.executeQuery();	
			while(rs.next()){
				beneficiaryMonth b = new beneficiaryMonth();
				b.setId(rs.getInt(1));
				b.setMonth(rs.getInt(2));
				b.setDateCheckup(rs.getDate(3));
				b.setCHECKUP(rs.getString(4));
				b.setDescription(rs.getString(5));
				list.add(b);
			}
					
		}catch(SQLException e) {
			System.out.println("error in month details SQLException inside add()");
			e.printStackTrace();
		}finally {
			try {
				SisDbUtil.closeConnection(con);
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}//finally
return list;
	}//show
	
	public  List<beneficiaryMonth> showAllDocuments(int id){
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		List<beneficiaryMonth> dlist= new ArrayList<beneficiaryMonth>();
		try {
			con=SisDbUtil.getConnection();
			String sql="select  fileUploads1, fileUploads2 from monthlyDetail where id=?";
			pstmt=con.prepareStatement(sql);
			pstmt.setInt(1,id);
			rs = pstmt.executeQuery();	
			beneficiaryMonth b; 
			while(rs.next()){	
				b=new beneficiaryMonth();
				b.setFileUploads1(rs.getBlob(1).getBinaryStream());
				b.setFileUploads2(rs.getBlob(2).getBinaryStream());
				dlist.add(b);
			}
					
		}catch(SQLException e) {
			System.out.println("error");
			e.printStackTrace();
		}finally {
			try {
				SisDbUtil.closeConnection(con);
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}//finally
return dlist;
	}//show
		
	}
	
	
	


