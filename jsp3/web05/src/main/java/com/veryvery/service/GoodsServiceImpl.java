package com.veryvery.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.veryvery.dao.GoodsDAO;
import com.veryvery.dto.GoodsDTO;

@Service
public class GoodsServiceImpl implements GoodsService {
	
	@Autowired
	GoodsDAO goodsDao;

	@Override
	public List<GoodsDTO> goodsList() throws Exception {
		return goodsDao.goodsList();
	}
		
	@Override
	public GoodsDTO goodsRead(int gno) throws Exception {
		return goodsDao.goodsRead(gno);
	}

	@Override
	public void goodsWrite(GoodsDTO gdto) throws Exception {
		goodsDao.goodsWrite(gdto);
		
	}

	@Override
	public void goodsUpdate(GoodsDTO gdto) throws Exception {
		goodsDao.goodsUpdate(gdto);
		
	}

	@Override
	public void goodsDelete(int gno) throws Exception {
		goodsDao.goodsDelete(gno);
		
	}
	
	@Override
	public List<GoodsDTO> goodsListLiving() throws Exception {
		return goodsDao.goodsListLiving();
	}
	@Override
	public List<GoodsDTO> goodsListDom() throws Exception {
		return goodsDao.goodsListDom();
	}
	@Override
	public List<GoodsDTO> goodsListAlpha() throws Exception {
		return goodsDao.goodsListAlpha();
	}
	@Override
	public List<GoodsDTO> goodsListShadow() throws Exception {
		return goodsDao.goodsListShadow();
	}
	@Override
	public List<GoodsDTO> goodsListCar() throws Exception {
		return goodsDao.goodsListCar();
	}
	
}
