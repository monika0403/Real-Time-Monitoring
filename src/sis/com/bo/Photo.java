package sis.com.bo;

import java.io.InputStream;
import java.sql.Blob;
import java.sql.Date;

public class Photo {
	private int id;

private String file_name;
private Date date;
private String location;
private InputStream photo;

public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}

public String getFile_name() {
	return file_name;
}
public void setFile_name(String file_name) {
	this.file_name = file_name;
}
public Date getDate() {
	return date;
}
public void setDate(Date date) {
	this.date = date;
}
public String getLocation() {
	return location;
}
public void setLocation(String location) {
	this.location = location;
}
public InputStream getPhoto() {
	return photo;
}
public void setPhoto(InputStream input) {
	this.photo = input;
}
}
