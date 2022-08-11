package com.practice.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.practice.common.Board1VO;
import com.practice.common.JDBCConnection;

public class Board1DAO {
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	String sql = "";
	int cnt = 0;
	
	// 게시판 목록
	public ArrayList<Board1VO> getBoardList() {
		ArrayList<Board1VO> list = null;
		try {
			conn = JDBCConnection.getConnection();
			sql = "select * from board1";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			list = new ArrayList<Board1VO>();
			while(rs.next()) {
				Board1VO vo = new Board1VO();
				vo.setSeq(rs.getInt("seq"));
				vo.setTitle(rs.getString("title"));
				vo.setContent(rs.getString("content"));
				vo.setWriter(rs.getString("writer"));
				vo.setRegdate(rs.getString("regdate"));
				list.add(vo);
				System.out.println("DAO작동완료");
			}
		} catch(ClassNotFoundException e) {
			System.out.println("드라이버 로딩이 실패되었 습니다.");
			e.printStackTrace();
		} catch(SQLException e) {
			System.out.println("SQL구문이 처리되지 못했습니다.");
			e.printStackTrace();
		} catch(Exception e) {
			System.out.println("잘못된 요청으로 업무를 처리하지 못했습니다.");
			e.printStackTrace();
		} finally {
			JDBCConnection.close(rs, pstmt, conn);
		}
		return list;
	}
	
	// 게시판 작성
	
	
	// 게시판 수정
	
	
	// 게시판 삭제
}
