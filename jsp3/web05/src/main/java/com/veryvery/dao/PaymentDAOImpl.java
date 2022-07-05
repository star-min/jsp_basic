package com.veryvery.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.veryvery.dto.GoodsDTO;
import com.veryvery.dto.PaymentDTO;

@Repository
public class PaymentDAOImpl implements PaymentDAO{

	@Autowired
	SqlSession sqlSession;
	
	@Override
	public List<PaymentDTO> paymentList(String id) throws Exception {
		return sqlSession.selectList("payment.paymentList", id);
	}

	@Override
	public GoodsDTO paymentRead(int gno) throws Exception {
		return sqlSession.selectOne("goods.goodsRead", gno);
	}

	@Override
	public List<PaymentDTO> paymentAdminList() throws Exception {
		return sqlSession.selectList("payment.paymentAdminList");
	}

	@Override
	public PaymentDTO paymentAdminRead(int ono) throws Exception {
		return sqlSession.selectOne("payment.paymentAdminRead", ono);
	}

	@Override
	public void paymentWrite(PaymentDTO pdto) throws Exception {
		sqlSession.insert("payment.paymentWrite", pdto);
		
	}

	@Override
	public void paymentUpdate(PaymentDTO pdto) throws Exception {
		sqlSession.update("payment.paymentUpdate", pdto);
		
	}

	@Override
	public void paymentAdminUpdate(PaymentDTO pdto) throws Exception {
		sqlSession.update("payment.paymentAdminUpdate", pdto);
		
	}

	@Override
	public void paymentDelete(int ono) throws Exception {
		sqlSession.delete("payment.paymentDelete", ono);
		
	}

	
	
}
