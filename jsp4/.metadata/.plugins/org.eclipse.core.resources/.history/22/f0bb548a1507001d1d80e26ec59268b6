package com.ksmstat.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ksmstat.dao.EmployDAO;
import com.ksmstat.dto.EmployDTO;
import com.ksmstat.util.PageMaker;

@Service
public class EmployServiceImpl implements EmployService {

	@Autowired
	EmployDAO employDAO;
	
	@Override
	public List<EmployDTO> employList() throws Exception {
		return employDAO.employList();
	}

	@Override
	public List<EmployDTO> employPageList(PageMaker page) throws Exception {
		return employDAO.employPageList(page);
	}

	@Override
	public EmployDTO employRead(int seq) throws Exception {
		return employDAO.employRead(seq);
	}

	@Override
	public int employCount() throws Exception {
		return employDAO.employCount();
	}

	@Override
	public void addEmploy(EmployDTO employ) throws Exception {
		employDAO.addEmploy(employ);
	}

	@Override
	public void deleteEmploy(EmployDTO employ) throws Exception {
		employDAO.deleteEmploy(employ);
	}

	@Override
	public void updateEmploy(EmployDTO employ) throws Exception {
		employDAO.updateEmploy(employ);
	}
}