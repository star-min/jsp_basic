package com.veryvery.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.veryvery.dto.QnaDTO;
import com.veryvery.dto.SearchDTO;

@Repository
public class QnaDAOImpl implements QnaDAO {
	@Autowired
	SqlSession sqlSession;
		
	@Override
	public List<QnaDTO> qnaList(SearchDTO sdto) throws Exception {
		return sqlSession.selectList("qna.qnaList", sdto);
	}
	
	@Override
	public List<QnaDTO> qnaList() throws Exception {
		return sqlSession.selectList("qna.qnaAllList");
	}

	@Override
	public QnaDTO qnaRead(int qno) throws Exception {
		return sqlSession.selectOne("qna.qnaRead", qno);
	}
	
	@Override
	public QnaDTO replyRead(int qno) throws Exception {
		return sqlSession.selectOne("qna.replyRead", qno);
	}

	@Override
	public void qnaWrite(QnaDTO qdto) throws Exception {
		sqlSession.insert("qna.qnaWrite", qdto);
	}

	@Override
	public void replyWrite(QnaDTO qdto) throws Exception {
		sqlSession.insert("qna.replyWrite", qdto);
	}

	@Override
	public void qnaUpdate(QnaDTO qdto) throws Exception {
		sqlSession.update("qna.qnaUpdate", qdto);
	}

	@Override
	public void qnaDelete(int qno) throws Exception {
		sqlSession.delete("qna.qnaDelete", qno);
	}

	@Override
	public void replyUpdate(QnaDTO qdto) throws Exception {
		sqlSession.update("qna.replyUpdate", qdto);
	}

	@Override
	public void replyDelete(int qno) throws Exception {
		sqlSession.delete("qna.replyDelete", qno);
	}
}
