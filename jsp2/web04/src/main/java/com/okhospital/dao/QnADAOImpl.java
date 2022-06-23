package com.okhospital.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.okhospital.dto.QnaDTO;
import com.okhospital.dto.SearchDTO;

@Repository
public class QnaDAOImpl implements QnaDAO {

	@Autowired
	SqlSession sqlSession;
		
	@Override
	public List<QnaDTO> qnaList(SearchDTO sdto) throws Exception {
		return sqlSession.selectList("qna.qnaList", sdto);
	}

	@Override
	public QnaDTO qnaRead(int qno) throws Exception {
		return sqlSession.selectOne("qna.qnaRead", qno);
	}

	@Override
	public void qnaWrite(QnaDTO qdto) throws Exception {
		sqlSession.insert("qna.qnaWrite", qdto);
	}

	@Override
	public void qnaUpdate(QnaDTO qdto) throws Exception {
		sqlSession.update("qna.qnaUpadte", qdto);
	}

	@Override
	public void qnaDelete(int qno) throws Exception {
		sqlSession.delete("qna.qnaDelete", qno);
	}
}