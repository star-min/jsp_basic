package com.okhospital.dao;

import java.util.List;

import com.okhospital.dto.DatabankDTO;

public interface DatabankDAO {

	//글 목록
	public List<DatabankDTO> databankList() throws Exception;
	
	//글 상세보기
	public DatabankDTO databankRead(int datano) throws Exception;
	
	//글 등록
	public void databankWrite(DatabankDTO ddto) throws Exception;
	
	//글 수정
	public void databankUpdate(DatabankDTO ddto) throws Exception;
	
	//글 삭제
	public void databankDelete(int datano) throws Exception;
}
