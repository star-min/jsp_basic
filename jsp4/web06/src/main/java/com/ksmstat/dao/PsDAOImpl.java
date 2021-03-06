package com.ksmstat.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ksmstat.dto.PsDTO;
import com.ksmstat.util.PageMaker;

@Repository
public class PsDAOImpl implements PsDAO {

	@Autowired
	SqlSession sqlSession;
	
	@Override
	public List<PsDTO> psList() throws Exception {
		return sqlSession.selectList("ps.psList");
	}

	@Override
	public List<PsDTO> psPageList(PageMaker page) throws Exception {
		System.out.println("페이지 시작 글 : "+page.getStartPost());
		System.out.println("한 페이지 글 개수 : "+page.getBnum());
		return sqlSession.selectList("ps.psPageList", page);
	}
	
	@Override
	public List<PsDTO> latestPs() throws Exception {
		return sqlSession.selectList("ps.latestPs");
	}

	@Override
	public PsDTO psRead(int seq) throws Exception {
		return sqlSession.selectOne("ps.psRead", seq);
	}

	@Override
	public int psCount() throws Exception {
		return sqlSession.selectOne("ps.psCount");
	}

	@Override
	public void addPs(PsDTO ps) throws Exception {
		sqlSession.insert("ps.addPs", ps);
	}

	@Override
	public void deletePs(PsDTO ps) throws Exception {
		sqlSession.delete("ps.deletePs", ps);
	}

	@Override
	public void updatePs(PsDTO ps) throws Exception {
		sqlSession.update("ps.updatePs", ps);
	}
}