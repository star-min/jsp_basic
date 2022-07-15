package com.ksmstat.service;

import java.util.List;

import com.ksmstat.dto.PsDTO;
import com.ksmstat.util.PageMaker;

public interface PsService {
	public List<PsDTO> psList() throws Exception;
	public List<PsDTO> psPageList(PageMaker page) throws Exception;
	public List<PsDTO> latestPs() throws Exception;
	public PsDTO psRead(int seq) throws Exception;
	public int psCount() throws Exception;
	public void addPs(PsDTO ps) throws Exception; 
	public void deletePs(PsDTO ps) throws Exception;
	public void updatePs(PsDTO ps) throws Exception;
}
