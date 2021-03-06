package com.veryvery.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.veryvery.dao.GoodsDAO;
import com.veryvery.dao.PaymentDAO;
import com.veryvery.dto.GoodsDTO;
import com.veryvery.dto.PaymentDTO;

@Service
public class PaymentServiceImpl implements PaymentService{

	@Autowired
	PaymentDAO paymentDao;
	
	@Autowired
	GoodsDAO goodsDao;
	
	@Override
	public List<PaymentDTO> paymentList(String id) throws Exception {
		return paymentDao.paymentList(id);
	}

	@Override
	public GoodsDTO paymentGoodRead(int gno) throws Exception {
		return goodsDao.goodsRead(gno);
	}

	@Override
	public List<PaymentDTO> paymentAdminList() throws Exception {
		return paymentDao.paymentAdminList();
	}

	@Override
	public PaymentDTO paymentAdminRead(int ono) throws Exception {
		return paymentDao.paymentAdminRead(ono);
	}
	
	@Override
	public PaymentDTO paymentRead(int ono) throws Exception {
		return paymentDao.paymentRead(ono);
	}

	@Override
	public void paymentWrite(PaymentDTO pdto) throws Exception {
		paymentDao.paymentWrite(pdto);
		
	}

	@Override
	public void paymentUpdate(PaymentDTO pdto) throws Exception {
		paymentDao.paymentUpdate(pdto);
		
	}

	@Override
	public void paymentAdminUpdate(PaymentDTO pdto) throws Exception {
		paymentDao.paymentAdminUpdate(pdto);
		
	}

	@Override
	public void paymentDelete(int ono) throws Exception {
		paymentDao.paymentDelete(ono);
		
	}

}
