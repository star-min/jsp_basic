package com.ksmstat.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ksmstat.dto.EmployDTO;
import com.ksmstat.util.PageMaker;

@Repository
public class EmployDAOImpl implements EmployDAO {

	@Autowired
	SqlSession sqlSession;
	
	@Override
	public List<EmployDTO> employList() throws Exception {
		return sqlSession.selectList("employ.employList");
	}

	@Override
	public List<EmployDTO> employPageList(PageMaker page) throws Exception {
		System.out.println("페이지 시작 글 : "+page.getStartPost());
		System.out.println("한 페이지 글 개수 : "+page.getBnum());
		return sqlSession.selectList("employ.employPageList", page);
	}
	
	@Override
	public List<EmployDTO> latestEmploy() throws Exception {
		return sqlSession.selectList("employ.latestEmploy");
	}

	@Override
	public EmployDTO employRead(int seq) throws Exception {
		return sqlSession.selectOne("employ.employRead", seq);
	}

	@Override
	public int employCount() throws Exception {
		return sqlSession.selectOne("employ.employCount");
	}

	@Override
	public void addEmploy(EmployDTO employ) throws Exception {
		sqlSession.insert("employ.addEmploy", employ);
	}

	@Override
	public void deleteEmploy(EmployDTO employ) throws Exception {
		sqlSession.delete("employ.deleteEmploy", employ);
	}

	@Override
	public void updateEmploy(EmployDTO employ) throws Exception {
		sqlSession.update("employ.updateEmploy", employ);
	}
}