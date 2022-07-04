package com.veryvery.dao;

import java.util.List;

import com.veryvery.dto.ReviewDTO;

public interface ReviewDAO {
	//글 목록
	public List<ReviewDTO> reviewList() throws Exception;
	
	//글 상세보기
	public ReviewDTO reviewRead(int seq) throws Exception;
	
	//글 등록
	public void reviewWrite(ReviewDTO rdto) throws Exception;
	
	//글 수정
	public void reviewUpdate(ReviewDTO rdto) throws Exception;
	
	//글 삭제
	public void reviewDelete(int seq) throws Exception;
}
