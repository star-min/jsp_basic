package com.veryvery.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.veryvery.dao.ReviewDAO;
import com.veryvery.dto.BoardDTO;
import com.veryvery.dto.ReviewDTO;

@Service
public class ReviewServiceImpl implements ReviewService {

	//해당 dao 객체 주입
	@Autowired
	ReviewDAO reviewDao;
	
	@Override
	public List<ReviewDTO> reviewList() throws Exception {
		return reviewDao.reviewList();
	}

	@Override
	public ReviewDTO reviewRead(int seq) throws Exception {
		return reviewDao.reviewRead(seq);
	}

	@Override
	public void reviewWrite(ReviewDTO rdto) throws Exception {
		reviewDao.reviewWrite(rdto);
	}

	@Override
	public void reviewUpdate(ReviewDTO rdto) throws Exception {
		reviewDao.reviewUpdate(rdto);
	}

	@Override
	public void reviewDelete(int seq) throws Exception {
		reviewDao.reviewDelete(seq);
	}
	
	@Override
	public List<ReviewDTO> latestReview() throws Exception {
		return reviewDao.latestReview();
	}
}