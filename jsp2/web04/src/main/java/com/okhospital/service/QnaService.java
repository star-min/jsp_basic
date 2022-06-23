package com.okhospital.service;

import java.util.List;

import com.okhospital.dto.QnaDTO;
import com.okhospital.dto.SearchDTO;

public interface QnaService {
	//질문 및 답변 목록
	public List<QnaDTO> qnaList(SearchDTO sdto) throws Exception;
	
	//질문 및 답변 글 읽기
	public QnaDTO qnaRead(int qno) throws Exception;
	
	//질문 및 답변 하기
	public void qnaWrite(QnaDTO qdto) throws Exception;
	
	//질문 및 답변 수정하기
	public void qnaUpdate(QnaDTO qdto) throws Exception;
	
	//질문 및 답변 삭제하기
	public void qnaDelete(int qno) throws Exception;
}
