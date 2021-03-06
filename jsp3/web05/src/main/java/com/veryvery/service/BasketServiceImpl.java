package com.veryvery.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.veryvery.dao.BasketDAO;
import com.veryvery.dto.BasketDTO;
import com.veryvery.dto.BasketDetailDTO;

@Service
public class BasketServiceImpl implements BasketService {

	@Autowired
	BasketDAO basketDao;
	
	@Override
	public List<BasketDTO> basketList(String id) throws Exception {
		return basketDao.basketList(id);
	}

	@Override
	public BasketDetailDTO basketRead(int bno) throws Exception {
		return basketDao.basketRead(bno);
	}

	@Override
	public void basketWrite(BasketDTO adto) throws Exception {
		basketDao.basketWrite(adto);
	}

	@Override
	public void basketUpdate(BasketDTO adto) throws Exception {
		basketDao.basketUpdate(adto);
	}

	@Override
	public void basketDelete(int bno) throws Exception {
		basketDao.basketDelete(bno);
		
	}

	
	
}
