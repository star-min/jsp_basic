package com.veryvery.service;

import java.util.List;

import com.veryvery.dto.DatabankDTO;

public interface FileService {
	public void databankInsert(DatabankDTO databank) throws Exception;
	public List<DatabankDTO> databankList() throws Exception;
}
