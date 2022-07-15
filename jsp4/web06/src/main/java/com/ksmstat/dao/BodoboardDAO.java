package com.ksmstat.dao;

import java.util.List;

import com.ksmstat.dto.BodoboardDTO;
import com.ksmstat.util.PageMaker;

public interface BodoboardDAO {
	public List<BodoboardDTO> bodoList() throws Exception;
	public List<BodoboardDTO> bodoPageList(PageMaker page) throws Exception;
	public List<BodoboardDTO> latestbodo() throws Exception;
	public BodoboardDTO bodoRead(int seq) throws Exception;
	public int bodoCount() throws Exception;
	public void addBodo(BodoboardDTO bodoboard) throws Exception; 
	public void deleteBodo(BodoboardDTO bodoboard) throws Exception;
	public void updateBodo(BodoboardDTO bodoboard) throws Exception;
}