package com.veryvery.service;

import java.util.List;

import com.veryvery.dto.BasketDTO;
import com.veryvery.dto.BasketDetailDTO;

public interface BasketService {
	//장바구니 목록
	public List<BasketDTO> basketList(String id) throws Exception;
	
	//장바구니 상세
	public BasketDetailDTO basketRead(int bno) throws Exception;
	
	//장바구니 등록
	public void basketWrite(BasketDTO adto) throws Exception;
	
	//장바구니 수정
	public void basketUpdate(BasketDTO adto) throws Exception;
	
	//장바구니 삭제
	public void basketDelete(int bno) throws Exception;

}
