package com.ksmstat.service;

import java.util.List;

import com.ksmstat.dto.BodoboardDTO;
import com.ksmstat.util.PageMaker;

public interface BodoboardService {
	public List<BodoboardDTO> bodoList() throws Exception;
	public List<BodoboardDTO> bodoPageList(PageMaker page) throws Exception;
	public List<BodoboardDTO> latestbodo() throws Exception;
	public BodoboardDTO bodoRead(int seq) throws Exception;
	public int bodoCount() throws Exception;
	public void addBodo(BodoboardDTO Bodoboard) throws Exception; 
	public void deleteBodo(BodoboardDTO Bodoboard) throws Exception;
	public void updateBodo(BodoboardDTO Bodoboard) throws Exception;
}
