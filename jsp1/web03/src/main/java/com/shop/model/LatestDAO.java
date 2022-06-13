package com.shop.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.shop.common.BoardVO;
import com.shop.common.JDBCConnection;
import com.shop.common.PowderVO;

public class LatestDAO {
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	String sql = "";
	int cnt = 0;
	
	public ArrayList<BoardVO> latestBoard() {	//게시펀 목록 불러오기
		ArrayList<BoardVO> boardList = null;
		try {
			conn = JDBCConnection.getConnection();
			sql = "select * from (select * from board order by regdate desc) where rownum <= 5";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			boardList = new ArrayList<BoardVO>();
			while(rs.next()) {
				BoardVO vo = new BoardVO();
				vo.setSeq(rs.getInt("seq"));
				vo.setTitle(rs.getString("title"));
				vo.setContent(rs.getString("content"));
				vo.setNickname(rs.getString("nickname"));
				vo.setRegdate(rs.getDate("regdate"));
				vo.setJo(rs.getInt("jo"));
				boardList.add(vo);
			}
		} catch(ClassNotFoundException e) {
			System.out.println("드라이버 로딩이 실패되었습니다.");
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
		return boardList;
	}
	
	public ArrayList<PowderVO> latestPowder() {		// 보충제 목록 불러오기
		ArrayList<PowderVO> powderList = new ArrayList<PowderVO>();
		try {
			conn = JDBCConnection.getConnection();
			sql = "select * from (select * from powder order by pinday desc) where rownum <= 5";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			powderList = new ArrayList<PowderVO>();
			while(rs.next()) {
				PowderVO vo = new PowderVO();
				vo.setPno(rs.getInt("pno"));
				vo.setPgory(rs.getString("pgory"));
				vo.setPname(rs.getString("pname"));
				vo.setPprice(rs.getInt("pprice"));
				vo.setPtaste(rs.getString("ptaste"));
				vo.setPamount(rs.getInt("pamount"));
				vo.setPcomment(rs.getString("pcomment"));
				vo.setPimage(rs.getString("pimage"));
				vo.setPinday(rs.getString("pinday"));
				powderList.add(vo);
			}
		} catch(ClassNotFoundException e) {
			System.out.println("드라이버 로딩이 실패되었습니다.");
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
		return powderList;
	}
}
