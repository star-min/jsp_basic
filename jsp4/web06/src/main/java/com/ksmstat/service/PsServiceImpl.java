package com.ksmstat.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ksmstat.dao.PsDAO;
import com.ksmstat.dto.PsDTO;
import com.ksmstat.util.PageMaker;

@Service
public class PsServiceImpl implements PsService {

	@Autowired
	PsDAO psDAO;
	
	@Override
	public List<PsDTO> psList() throws Exception {
		return psDAO.psList();
	}

	@Override
	public List<PsDTO> psPageList(PageMaker page) throws Exception {
		return psDAO.psPageList(page);
	}

	@Override
	public List<PsDTO> latestPs() throws Exception {
		return psDAO.latestPs();
	}

	@Override
	public PsDTO psRead(int seq) throws Exception {
		return psDAO.psRead(seq);
	}

	@Override
	public int psCount() throws Exception {
		return psDAO.psCount();
	}

	@Override
	public void addPs(PsDTO ps) throws Exception {
		psDAO.addPs(ps);
	}

	@Override
	public void deletePs(PsDTO ps) throws Exception {
		psDAO.deletePs(ps);
	}

	@Override
	public void updatePs(PsDTO ps) throws Exception {
		psDAO.updatePs(ps);
	}
}