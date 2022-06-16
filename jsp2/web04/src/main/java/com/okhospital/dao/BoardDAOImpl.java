package com.okhospital.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.okhospital.dto.BoardDTO;

@Repository
public class BoardDAOImpl implements BoardDAO {

	//객체 주입
	@Inject
	SqlSession sqlSession;
	
	@Override
	public List<BoardDTO> boardList() throws Exception {
		return sqlSession.selectList("board.boardList");
	}

	@Override
	public BoardDTO boardRead(int seq) throws Exception {
		return sqlSession.selectOne("board.boardRead");
	}

	@Override
	public void boardWrite(BoardDTO bdto) throws Exception {
		sqlSession.insert("board.boardWrite", bdto);
	}

	@Override
	public void boardUpdate(BoardDTO bdto) throws Exception {
		sqlSession.update("board.boardUpdate", bdto);
	}

	@Override
	public void boardDelete(int seq) throws Exception {
		sqlSession.delete("board.boardDelete", seq);
	}
	
}
