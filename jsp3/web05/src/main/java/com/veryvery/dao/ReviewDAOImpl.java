package com.veryvery.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.veryvery.dto.ReviewDTO;

@Repository
public class ReviewDAOImpl implements ReviewDAO {
	
	//해당 프로그램이 필요하면 알아서 사용하게 되어 스스로 제어하게 됨 => IoC(Inverse of Control : 제어의 역전)
	//객체 주입
	@Autowired
	SqlSession sqlSession;  //boardMapper.xml의 내용을 include한 것 같은 효과가 있음
	
	@Override
	public List<ReviewDTO> reviewList() throws Exception {
		return sqlSession.selectList("review.reviewList");
	}

	@Override
	public ReviewDTO reviewRead(int seq) throws Exception {
		return sqlSession.selectOne("review.reviewRead", seq);
	}

	@Override
	public void reviewWrite(ReviewDTO rdto) throws Exception {
		sqlSession.insert("review.reviewWrite", rdto);
	}

	@Override
	public void reviewUpdate(ReviewDTO rdto) throws Exception {
		sqlSession.update("review.reviewUpdate", rdto);
	}

	@Override
	public void reviewDelete(int seq) throws Exception {
		sqlSession.delete("review.reviewDelete", seq);
	}
	
	@Override
	public List<ReviewDTO> latestReview() throws Exception {
		return sqlSession.selectList("review.latestReview");
	}
}
