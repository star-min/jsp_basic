package com.veryvery.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.veryvery.dao.FileDAO;
import com.veryvery.dto.DatabankDTO;

@Service
	public class FileServiceImpl implements FileService {
	
	@Autowired
	FileDAO fileDAO;
	
	@Override
		public void databankInsert(DatabankDTO databank) throws Exception {
		fileDAO.databankInsert(databank);
	}
	
	@Override
		public List<DatabankDTO> databankList() throws Exception {
		return fileDAO.databankList();
	}
}