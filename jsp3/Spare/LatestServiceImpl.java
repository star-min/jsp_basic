package com.veryvery.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.veryvery.dao.LatestDAO;
import com.veryvery.dto.BoardDTO;

@Service
public class LatestServiceImpl implements LatestService {

	@Autowired
	LatestDAO latestDao;

	@Override
	public List<BoardDTO> latestBoard() throws Exception {
		return latestDao.latestBoard();
	}
	
	
}
