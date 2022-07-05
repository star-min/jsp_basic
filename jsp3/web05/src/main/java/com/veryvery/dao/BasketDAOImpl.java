package com.veryvery.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.veryvery.dto.BasketDTO;
import com.veryvery.dto.BasketDetailDTO;

@Repository
public class BasketDAOImpl implements BasketDAO {
	
	@Autowired
	SqlSession sqlSession;

	@Override
	public List<BasketDTO> basketList(String id) throws Exception {
		return sqlSession.selectList("basket.basketList", id);
	}

	@Override
	public BasketDetailDTO basketRead(int bno) throws Exception {
		return sqlSession.selectOne("basket.basketRead", bno);
	}

	@Override
	public void basketWrite(BasketDTO adto) throws Exception {
		sqlSession.insert("basket.basketWrite", adto);
		
	}

	@Override
	public void basketUpdate(BasketDTO adto) throws Exception {
		sqlSession.update("basket.basketUpdate", adto);
		
	}

	@Override
	public void basketDelete(int bno) throws Exception {
		sqlSession.delete("basket.basketDelete", bno);
		
	}
	
	
}
