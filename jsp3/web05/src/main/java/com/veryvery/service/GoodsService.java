package com.veryvery.service;

import java.util.List;

import com.veryvery.dto.GoodsDTO;

public interface GoodsService {
	//상품 목록
	public List<GoodsDTO> goodsList() throws Exception;
		
	//상품 상세보기
	public GoodsDTO goodsRead(int gno) throws Exception;
	
	//상품 등록
	public void goodsWrite(GoodsDTO gdto) throws Exception;
	
	//상품 수정
	public void goodsUpdate(GoodsDTO gdto) throws Exception;
	
	//상품 삭제
	public void goodsDelete(int gno) throws Exception;
}
