package com.okhospital.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.okhospital.dao.QnaDAO;
import com.okhospital.dto.QnaDTO;
import com.okhospital.dto.SearchDTO;

@Service
public class QnaServiceImpl implements QnaService {
	
	@Autowired
	QnaDAO qnaDAO;

	@Override
	public List<QnaDTO> qnaList(SearchDTO sdto) throws Exception {
		return qnaDAO.qnaList(sdto);
	}

	@Override
	public QnaDTO qnaRead(int qno) throws Exception {
		return qnaDAO.qnaRead(qno);
	}

	@Override
	public void qnaWrite(QnaDTO qdto) throws Exception {
		qnaDAO.qnaWrite(qdto);
	}

	@Override
	public void qnaUpdate(QnaDTO qdto) throws Exception {
		qnaDAO.qnaUpdate(qdto);
	}

	@Override
	public void qnaDelete(int qno) throws Exception {
		qnaDAO.qnaDelete(qno);
	}
}