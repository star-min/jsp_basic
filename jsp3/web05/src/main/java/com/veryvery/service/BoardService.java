package com.veryvery.service;

import java.util.List;

import com.veryvery.dto.BoardDTO;

public interface BoardService {
	//글 목록
	public List<BoardDTO> boardList() throws Exception;
		
	//글 상세보기
	public BoardDTO boardRead(int seq) throws Exception;
	
	//글 등록
	public void boardWrite(BoardDTO bdto) throws Exception;
	
	//글 수정
	public void boardUpdate(BoardDTO bdto) throws Exception;
	
	//글 삭제
	public void boardDelete(int seq) throws Exception;
	
	//최신글 목록
	public List<BoardDTO> latestBoard() throws Exception;
}
