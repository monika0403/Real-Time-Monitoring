package sis.com.dao;

import java.util.List;

import sis.com.bo.hospital;

public interface hospitalDao {

	boolean add(hospital hosp);
	List<hospital> show(String dist);
}
