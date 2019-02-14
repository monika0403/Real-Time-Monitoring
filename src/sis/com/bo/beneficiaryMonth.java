package sis.com.bo;

import java.io.InputStream;
import java.sql.Date;

public class beneficiaryMonth {
private int id;
private  int Month;
private Date dateCheckup;
private	String CHECKUP;
private	String Description;
private	String confirmation;
private	InputStream fileUploads1;
private int file1Size ;
private	InputStream fileUploads2;
private int file2Size;
public int getFile1Size() {
	return file1Size;
}
public void setFile1Size(int file1Size) {
	this.file1Size = file1Size;
}
public int getFile2Size() {
	return file2Size;
}
public void setFile2Size(int file2Size) {
	this.file2Size = file2Size;
}
public int getMonth() {
	return Month;
}
public void setMonth(int month) {
	Month = month;
}
public Date getDateCheckup() {
	return dateCheckup;
}
public void setDateCheckup(Date dateCheckup) {
	this.dateCheckup = dateCheckup;
}
public String getCHECKUP() {
	return CHECKUP;
}
public void setCHECKUP(String cHECKUP) {
	CHECKUP = cHECKUP;
}
public String getDescription() {
	return Description;
}
public void setDescription(String description) {
	Description = description;
}
public String getConfirmation() {
	return confirmation;
}
public void setConfirmation(String confirmation) {
	this.confirmation = confirmation;
}
public InputStream getFileUploads1() {
	return fileUploads1;
}
public void setFileUploads1(InputStream fileUploads1) {
	this.fileUploads1 = fileUploads1;
}
public InputStream getFileUploads2() {
	return fileUploads2;
}
public void setFileUploads2(InputStream fileUploads2) {
	this.fileUploads2 = fileUploads2;
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
}
