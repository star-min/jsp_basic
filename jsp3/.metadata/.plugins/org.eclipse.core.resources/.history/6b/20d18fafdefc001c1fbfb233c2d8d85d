package com.veryvery.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.veryvery.dto.GoodsDTO;

@Repository
public class GoodsDAOImpl implements GoodsDAO {

	@Autowired
	SqlSession sqlSession;
	
	@Override
	public List<GoodsDTO> goodsList() throws Exception {
		return sqlSession.selectList("goods.goodsList");
	}

	@Override
	public GoodsDTO goodsRead(int gno) throws Exception {
		return sqlSession.selectOne("goods.goodsRead", gno);
	}

	@Override
	public void goodsWrite(GoodsDTO gdto) throws Exception {
		sqlSession.insert("goods.goodsWrite", gdto);
	}

	@Override
	public void goodsUpdate(GoodsDTO gdto) throws Exception {
		sqlSession.update("goods.goodsUpdate", gdto);
	}

	@Override
	public void goodsDelete(int gno) throws Exception {
		sqlSession.delete("goods.goodsDelete", gno);
	}

}
