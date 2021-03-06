package com.ksmstat.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ksmstat.dto.BodoboardDTO;
import com.ksmstat.util.PageMaker;

@Repository
public class BodoboardDAOImpl implements BodoboardDAO {

	@Autowired
	SqlSession sqlSession;
	
	@Override
	public List<BodoboardDTO> bodoList() throws Exception {
		return sqlSession.selectList("bodoboard.bodoList");
	}

	@Override
	public List<BodoboardDTO> bodoPageList(PageMaker page) throws Exception {
		System.out.println("페이지 시작 글 : "+page.getStartPost());
		System.out.println("한 페이지 글 개수 : "+page.getBnum());
		return sqlSession.selectList("bodoboard.bodoPageList", page);
	}
	
	@Override
	public List<BodoboardDTO> latestbodo() throws Exception {
		return sqlSession.selectList("bodoboard.latestbodo");
	}

	@Override
	public BodoboardDTO bodoRead(int seq) throws Exception {
		return sqlSession.selectOne("bodoboard.bodoRead", seq);
	}

	@Override
	public int bodoCount() throws Exception {
		return sqlSession.selectOne("bodoboard.bodoCount");
	}

	@Override
	public void addBodo(BodoboardDTO bodoboard) throws Exception {
		sqlSession.insert("bodoboard.addBodo", bodoboard);
	}

	@Override
	public void deleteBodo(BodoboardDTO bodoboard) throws Exception {
		sqlSession.delete("bodoboard.deleteBodo", bodoboard);
	}

	@Override
	public void updateBodo(BodoboardDTO bodoboard) throws Exception {
		sqlSession.update("bodoboard.updateBodo", bodoboard);
	}
}