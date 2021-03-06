package com.veryvery.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.veryvery.dto.BoardDTO;

@Repository
public class LatestDAOImpl implements LatestDAO{

	@Autowired
	SqlSession sqlSession;
	
	@Override
	public List<BoardDTO> latestBoard() throws Exception {
		return sqlSession.selectList("latest.latestBoard");
	}

}
