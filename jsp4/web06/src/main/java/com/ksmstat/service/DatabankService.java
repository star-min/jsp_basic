package com.ksmstat.service;

import java.util.List;

import com.ksmstat.dto.DatabankDTO;

public interface DatabankService {
	public List<DatabankDTO> databankList() throws Exception;
	public DatabankDTO databankRead(int datano) throws Exception;
	public void databankWrite(DatabankDTO ddto) throws Exception;
	public void databankUpdate(DatabankDTO ddto) throws Exception;
	public void databankDelete(int datano) throws Exception;
}
