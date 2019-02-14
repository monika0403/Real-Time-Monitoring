package sis.com.bo;

import java.io.InputStream;
import java.sql.*;
public class Appeal {

	int id;
	String accno;
	Date birth;
	InputStream birthCerti;
	String approve;
	private int size;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getAccno() {
		return accno;
	}
	public void setAccno(String accno) {
		this.accno = accno;
	}
	public Date getBirth() {
		return birth;
	}
	public void setBirth(java.sql.Date today) {
		this.birth = today;
	}
	public InputStream getBirthCerti() {
		return birthCerti;
	}
	public void setBirthCerti(InputStream birthCerti) {
		this.birthCerti = birthCerti;
	}
	public String getApprove() {
		return approve;
	}
	public void setApprove(String approve) {
		this.approve = approve;
	}
	public void setSize(int size) {
		this.size = size;
	}
	public int getSize() {
		return size;
	}
	
}
