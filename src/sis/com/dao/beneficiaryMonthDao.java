package sis.com.dao;

import sis.com.bo.beneficiaryMonth;

import java.io.InputStream;
import java.util.*;

public interface beneficiaryMonthDao {

	public boolean addMonthDetails(beneficiaryMonth beneficiary);
	public List<beneficiaryMonth> showMonthlyDetails(int id);
	public  List<beneficiaryMonth> showAllDocuments(int id);
}
