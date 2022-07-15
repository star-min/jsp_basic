package com.ksmstat.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ksmstat.dao.BodoboardDAO;
import com.ksmstat.dto.BodoboardDTO;
import com.ksmstat.util.PageMaker;

@Service
public class BodoboardServiceImpl implements BodoboardService {

	@Autowired
	BodoboardDAO bodoboardDAO;
	
	@Override
	public List<BodoboardDTO> bodoList() throws Exception {
		return bodoboardDAO.bodoList();
	}

	@Override
	public List<BodoboardDTO> bodoPageList(PageMaker page) throws Exception {
		return bodoboardDAO.bodoPageList(page);
	}

	@Override
	public List<BodoboardDTO> latestbodo() throws Exception {
		return bodoboardDAO.latestbodo();
	}

	@Override
	public BodoboardDTO bodoRead(int seq) throws Exception {
		return bodoboardDAO.bodoRead(seq);
	}

	@Override
	public int bodoCount() throws Exception {
		return bodoboardDAO.bodoCount();
	}

	@Override
	public void addBodo(BodoboardDTO bodoboard) throws Exception {
		bodoboardDAO.addBodo(bodoboard);
	}

	@Override
	public void deleteBodo(BodoboardDTO bodoboard) throws Exception {
		bodoboardDAO.deleteBodo(bodoboard);
	}

	@Override
	public void updateBodo(BodoboardDTO bodoboard) throws Exception {
		bodoboardDAO.updateBodo(bodoboard);
	}
}