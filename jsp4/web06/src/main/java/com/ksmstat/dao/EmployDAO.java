package com.ksmstat.dao;

import java.util.List;

import com.ksmstat.dto.EmployDTO;
import com.ksmstat.util.PageMaker;

public interface EmployDAO {
	public List<EmployDTO> employList() throws Exception;
	public List<EmployDTO> employPageList(PageMaker page) throws Exception;
	public List<EmployDTO> latestEmploy() throws Exception;
	public EmployDTO employRead(int seq) throws Exception;
	public int employCount() throws Exception;
	public void addEmploy(EmployDTO notice) throws Exception; 
	public void deleteEmploy(EmployDTO notice) throws Exception;
	public void updateEmploy(EmployDTO notice) throws Exception;
}