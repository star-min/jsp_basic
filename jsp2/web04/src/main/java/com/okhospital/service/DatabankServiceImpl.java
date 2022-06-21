package com.okhospital.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.okhospital.dao.DatabankDAO;
import com.okhospital.dto.DatabankDTO;

@Service
public class DatabankServiceImpl implements DatabankService {

	//해당 dao 객체 주입
	@Autowired
	DatabankDAO databankDao;
	
	@Override
	public List<DatabankDTO> databankList() throws Exception {
		return databankDao.databankList();
	}

	@Override
	public DatabankDTO databankRead(int datano) throws Exception {
		return databankDao.databankRead(datano);
	}

	@Override
	public void databankWrite(DatabankDTO ddto) throws Exception {
		databankDao.databankWrite(ddto);
	}

	@Override
	public void databankUpdate(DatabankDTO ddto) throws Exception {
		databankDao.databankUpdate(ddto);
	}

	@Override
	public void databankDelete(int datano) throws Exception {
		databankDao.databankDelete(datano);
	}
}