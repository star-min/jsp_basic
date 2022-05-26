package com.shop.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.shop.common.BoardVO;
import com.shop.common.PowderVO;

public class PowderDAO {
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	String sql = "";
	int cnt = 0;
	
	public int insertPowder(PowderVO vo) {	// 보충제 추가
		
		return cnt;
	}
	public ArrayList<PowderVO> getPowderList(PowderVO vo) {		// 보충제 목록 불러오기
		ArrayList<PowderVO> list = new ArrayList<PowderVO>();
		
		return list; 
	}
	public PowderVO getPowder(int pid) {	// 보충제 상세 보기
		PowderVO powder = new PowderVO();
		
		return powder;
	}
	public ArrayList<PowderVO> getConditionSearch(String condition, String keyword){	// 보충제 검색하기
		ArrayList<PowderVO> powderlist = new ArrayList<PowderVO>();
		
		return powderlist;
	}
	public int updatePowder(PowderVO vo) {
		
		return cnt;
	}
	public int deletePowder(int num) {
		
		return cnt;
	}
}
