package com.veryvery.service;

import java.util.List;

import com.veryvery.dto.GoodsDTO;
import com.veryvery.dto.PaymentDTO;

public interface PaymentService {
	
	// 결제 목록 불러오기
	public List<PaymentDTO> paymentList(String id) throws Exception;
	
	// 상품 상세보기
	public GoodsDTO paymentGoodRead(int gno) throws Exception;
	
	// 관리자용 결제 상세보기
	public List<PaymentDTO> paymentAdminList() throws Exception;
	
	// 결제 정보 불러오기
	public PaymentDTO paymentAdminRead(int ono) throws Exception;
	
	// 결제 정보 불러오기
	public PaymentDTO paymentRead(int ono) throws Exception;
	
	// 결제 처리
	public void paymentWrite(PaymentDTO pdto) throws Exception;
	
	// 배송지 수정
	public void paymentUpdate(PaymentDTO pdto) throws Exception;
	
	// 택배 배정
	public void paymentAdminUpdate(PaymentDTO pdto) throws Exception;
	
	//상품 삭제
	public void paymentDelete(int ono) throws Exception;
	
}
